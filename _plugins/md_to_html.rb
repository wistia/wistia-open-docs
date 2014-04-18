require_relative '../_config'
require 'rdiscount'

module Jekyll
  module MarkdownFilter
    def md_to_html(text)
      new_text = RDiscount.new(text)
      new_text.to_html
    end
  end
end

Liquid::Template.register_filter(Jekyll::MarkdownFilter)
