require 'rubygems'
require 'nokogiri'
require 'tire'

# Adapted from https://raw.github.com/PascalW/jekyll_indextank/master/indexer.rb && 
#              https://github.com/jaysoo/jaysoo.ca/blob/master/_plugins/indexer.rb

module Jekyll
  class Indexer < Generator

    attr_accessor :site

    def initialize(config = {})
      super(config)

      Tire.configure do
        url config['elasticsearch_host']
      end
    end


    def generate(site)
      # convenience, so we don't have to pass this around
      self.site = site

      print 'Indexing posts... '

      # get all the posts
      all_posts = site.posts.select{ |post| post.data['category'] != "no_index"}.map { |post| hash_for_post(post) }

      Tire.index 'posts' do

        # clear 'em all
        delete

        # some config stuff
        create :mappings => {
          :post => { 
            :properties => {
              :id           =>  { type: 'integer', index: 'not_analyzed', include_in_all: false },
              :title        =>  { type: 'string', analyzer: 'snowball', boost: '2.0' },
              :text         =>  { type: 'string', analyzer: 'snowball' },
              :description  =>  { type: 'string', analyzer: 'snowball', boost: '1.5' } 
            } 
          } 
        }

        # add all posts to index
        import all_posts

        # stay cool
        refresh 
      end

      puts 'done!'

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
