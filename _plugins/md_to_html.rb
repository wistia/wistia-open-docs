require_relative '../_config'
require 'redcloth'

module Jekyll
  module MarkdownFilter
    def md_to_html(text)
      new_text = RedCloth.new(text)
      new_text.to_html
    end
  end
end

Liquid::Template.register_filter(Jekyll::MarkdownFilter)
