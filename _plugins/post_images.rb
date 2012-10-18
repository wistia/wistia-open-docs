

module Jekyll

  ## for use on the page like: {% post_image hashed_id: 'delivery_id_of_image', width: 640, height: 400 %} ##
  class PostImage < Liquid::Tag

    MAX_WIDTH = 660

    def initialize(tag_name, text, tokens)
      @params = eval "{#{text}}"
      
      super
    end

    def render(context)
      if height
        %(<img src="#{url}" class="post_image #{klass}" width="#{width}" height="#{height}" />)
      else
        %(<img src="#{url}" class="post_image #{klass}" width="#{width}" />)
      end
    end

    def klass
      @params[:class]
    end

    def url
      "http://embed.wistia.com/deliveries/#{hashed_id}.png?image_resize=#{MAX_WIDTH}>"
    end

    def hashed_id
      @params[:hashed_id] || raise("you need a hashed_id for this imagio")
    end

    def width
      [original_width || MAX_WIDTH, MAX_WIDTH].min
    end

    def height
      return unless aspect_ratio
      (width / aspect_ratio).round
    end

    def aspect_ratio
      if original_width && original_height
        original_width / original_height.to_f
      end
    end

    def original_width
      @params[:width]
    end

    def original_height
      @params[:height]
    end

  end
end

Liquid::Template.register_tag('post_image', Jekyll::PostImage)
