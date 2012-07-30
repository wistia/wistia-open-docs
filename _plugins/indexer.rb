require 'rubygems'
require 'nokogiri'
require 'yajl/json_gem'
require 'tire'

# Adapted from https://raw.github.com/PascalW/jekyll_indextank/master/indexer.rb && https://github.com/jaysoo/jaysoo.ca/blob/master/_plugins/indexer.rb

module Jekyll

  class Indexer < Generator

    Tire.configure do
      url site.config['elasticsearch_url']
    end

    def generate(site)

      raise ArgumentError.new 'Missing elasticsearch_url.' unless site.config['elasticsearch_url']
      return unless site.config['doindex']
      base_url = site.config['production_url']

      # indexing posts
      puts 'Indexing posts...'

      Tire.index 'posts' do

        delete
        create

        site.posts.each do |post|
          text = extract_text(site, post)
          date_str = post.data['created_at'] || post.date.strftime('%Y-%m-%d %H:%MZ')

          document = {
            :title => post.data['title'],
            :text => text,
            :date => date_str,
            :url => base_url + post.url
          }

          if post.tags
            document['tags'] = post.tags
          end

          if post.data.has_key?('category')
            document['category'] = post.data['category']
          end

          store document
        end
      end

      # indexing pages
      puts 'Indexing pages...'
      pages = site.pages
      pages = pages.find_all {|p| p.output_ext == '.html' } 
      pages.reject! {|p| p.data['noindex'] } 


      Tire.index 'pages' do
        pages.each do |page|
          text = extract_text(site, page)

          url = page.url()

          document = {
            :title => page.data['title'],
            :text => text,
            :url => base_url + url
          }

          store document

        end
      end

      puts 'Indexing done!'

    end

    def extract_text(site, page)
      page.render(site.layouts, site.site_payload)
      doc = Nokogiri::HTML(page.output)
      main = doc.css("#main")
      page_text = main.text.gsub("\r"," ").gsub("\n"," ").gsub(/\s+/, " ")
    end

  end 
end
