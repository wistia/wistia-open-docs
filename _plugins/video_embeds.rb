
## for use on the page like: <div class="video_embed">{% wistia_embed 9dc0fc7d3a, 600, 400, #636155 %}</div> ##

module Jekyll

  class WistiaEmbed < Liquid::Tag
    @@width = 640
    @@height = 360
    @@player_color = #636155

    def initialize(tag_name, params, tokens)
      super
      args = split_params(params)
      @@hashed_id = args[0]
      if args.length > 1
        @@width = args[1] if args.length > 1
        @@height = args[2] if args.length > 2
        @@player_color = args[3] if args.length > 3
      end
    end

    def render(context)
      %(<iframe src="http://fast.wistia.com/embed/iframe/#{@@hashed_id}?
      controlsVisibleOnLoad=true&playerColor=#{ sanitize_color(@@player_color) }version=v1&videoHeight=#{@@height}&videoWidth=#{@@width}&volumeControl=true" 
      allowtransparency="true" frameborder="0" scrolling="no" 
      class="wistia_embed" name="wistia_embed" width="#{@@width}" height="#{@@height}"></iframe>)
    end

    def split_params(params)
      params.split(",").map(&:strip)
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
