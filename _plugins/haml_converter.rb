require 'haml'
require 'sass'

module Jekyll
  module Converters
    class HamlConverter < Converter
      safe true
      priority :low

      def matches(ext)
        ext =~ /haml/i
      end

      def output_ext(ext)
        ".html"
      end

      def convert(content)
        engine = Haml::Engine.new(content)
        engine.render
      end
    end

    class SassConverter < Converter
      safe true
      priority :low

      def matches(ext)
        ext =~ /sass/i
      end

      def output_ext(ext)
        ".css"
      end

      def convert(content)
        engine = Sass::Engine.new(content)
        engine.render
      end
    end
  end
end
