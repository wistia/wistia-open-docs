require 'net/https'
require 'uri'
require 'json'

## for use on the page like: {% wistia_embed 9dc0fc7d3a, 600, 400, #636155 %}

module Jekyll

  class WistiaEmbed < Liquid::Tag

    BASE_URL = "http://fast.wistia.com/oembed?url=http://home.wistia.com/medias/"

    def initialize(tag_name, params, tokens)
      super
      @config = split_params(params)
    end

    def render(context)
      default_params = context.registers[:site].config['wistia_embed_settings']
      @config = default_params.merge(@config)

      url = BASE_URL + @config["hashed_id"] + query_param_str(@config)
      embed_url = URI.parse url
      json_rep = JSON.parse resolve(embed_url)

      "<div class='video_embed'>#{json_rep['html']}</div>"
    end

    private

    def resolve(uri)
      response = Net::HTTP.get_response(uri)

      unless response['location'].nil? and response['Location'].nil?
        resolve URI.parse(response['location']) or
                URI.parse(response['Location'])
      else
        response.body
      end
    end

    def query_param_str(params)
      param_arr = []
      params.each_with_index do |(key, value), index|
        unless key == "hashed_id"
          if index == 0
            param_arr << "%3F#{key}%3D#{value}"
          else
            param_arr << "%26#{key}%3D#{value}"
          end
        end
      end
      param_arr.join
    end

    def split_params(params)
      args = params.split(",").map(&:strip)
      args.inject({}) do |result, arg|
        key, value = arg.split /:/
        result[key.strip] = value.strip
        result
      end
    end

    def sanitize_color(color)
      if color.include? '#'
        clean_color = color.split('#')[1]
        return clean_color
      else
        return color
      end
    end

  end
end

Liquid::Template.register_tag('wistia_embed', Jekyll::WistiaEmbed)
