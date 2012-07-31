require 'rubygems'
require 'nokogiri'
require 'tire'

# Adapted from https://raw.github.com/PascalW/jekyll_indextank/master/indexer.rb && https://github.com/jaysoo/jaysoo.ca/blob/master/_plugins/indexer.rb

module Jekyll

  class Indexer < Generator

    puts "running"
    
    Tire.configure do
      url '127.0.0.1:9200'
    end

    def generate(site)

      raise ArgumentError.new 'Missing elasticsearch_url.' unless site.config['elasticsearch_url']
      return unless site.config['doindex']
      base_url = site.config['production_url']

      # indexing posts
      puts 'Indexing posts...'

      posts_counter = 0
      posts_arr = []

      site.posts.each do |post|
        text = extract_text(site, post)
        date_str = post.data['created_at'] || post.date.strftime('%Y-%m-%d %H:%MZ')

        document = {
          :title => post.data['title'],
          :text => text,
          :date => date_str,
          :url => base_url + post.url,
          :id => posts_counter,
          :type => 'post',
          :description => post.data['description'] || ""
        }

        if post.tags
          document['tags'] = post.tags
        end

        if post.data.has_key?('category')
          document['category'] = post.data['category']
        end

        posts_arr << document
        posts_counter += 1
      end

      Tire.index 'posts' do

        delete
        create :mappings => {

          :post => { 
            :properties => {
              :id => { type: 'integer', index: 'not_analyzed', include_in_all: false },
              :title => { type: 'string', analyzer: 'snowball', boost: '2.0' },
              :text => { type: 'string', analyzer: 'snowball' },
              :description => { type: 'string', analyzer: 'snowball' } 
            } 
          } 
        }

        import posts_arr
        refresh 
      end

      puts 'Indexing done!'

    end

    def extract_text(site, page)
      page.render(site.layouts, site.site_payload)
      doc = Nokogiri::HTML(page.output)
      doc.css('script').remove().css('#doc_nav').remove()
      page_text = doc.text.gsub("\r"," ").gsub("\n"," ").gsub(/\s+/, " ")
    end

  end 
end
