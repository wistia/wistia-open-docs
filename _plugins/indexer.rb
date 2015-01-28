require 'rubygems'
require 'nokogiri'
require 'elasticsearch'

# Adapted from https://raw.github.com/PascalW/jekyll_indextank/master/indexer.rb && 
#              https://github.com/jaysoo/jaysoo.ca/blob/master/_plugins/indexer.rb

module Jekyll
  class Indexer < Generator

    attr_accessor :site

    def initialize(config = {})
      super(config)
    end


    def generate(site)
      # convenience, so we don't have to pass this around
      self.site = site

      print 'Indexing posts... '

      exclude_from_search = site.config['exclude_from_search']

      # get all the posts
      all_posts = site.posts.
              select{ |post| post.data['category'] != exclude_from_search }.
              map { |post| hash_for_post(post) }

      elasticsearch = Elasticsearch::Client.new(
        log: true,
        host: '127.0.0.1',
        port: 9200
      )

      root_dir = File.expand_path(File.join(File.dirname(__FILE__), '..'))
      Dir["#{root_dir}/_posts/*.md"].each do |post_path|
        post_body = File.read(post_path)

        split_post = post_body.split("---\n")
        metadata = split_post[1]
        parsed_metadata = YAML.load(metadata)
        real_body = split_post[2]
        post_id = File.basename(post_path, '.*')

        real_body.gsub!(/\{\%.*?\%\}/, '') if real_body
        real_body.gsub!(/\{\{.*?\}\}/, '') if real_body

        elasticsearch.index(
          body: {
            title: parsed_metadata['title'],
            category: parsed_metadata['category'],
            url: "/#{$config.basepath}/#{post_id}",
            description: parsed_metadata['description'],
            body: real_body
          },
          id: post_id,
          index: 'docs',
          type: 'post'
        )
      end

    rescue Errno::ECONNREFUSED => e
      puts "elasticsearch isn't running FYI you idiot"
    end


    # returns the post as a hash suitable for jamming into elasticsearch!
    def hash_for_post(post)
      document = {
        :id => next_id,
        :title => post.data['title'],
        :text => text_for_post(post),
        :date => post.data['created_at'] || post.date.strftime('%Y-%m-%d %H:%MZ'),
        :url => post.url,
        :type => 'post',
        :description => post.data['description'] || ""
      }

      document['tags'] = post.tags if post.tags
      document['category'] = post.data['category'] if post.data.has_key?('category')

      document
    end


    # returns a string which is the raw text of the page
    def text_for_post(post)
      post.render(site.layouts, site.site_payload)

      doc = Nokogiri::HTML(post.output)
      doc.css('script').remove().css('#doc_nav').remove()

      # one line it
      doc.text.gsub(/[\r\n\s]+/," ")
    end


    # just makes IDs for posts
    def next_id
      @id ||= 0
      @id += 1
    end

  end 
end
