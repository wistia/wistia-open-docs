
module Jekyll

  module AssetFilter
    def post_link_url(input)
      baseurl = @context.registers[:site].config["baseurl"]
      "#{baseurl}/#{input}"
    end
  end

end

Liquid::Template.register_filter(Jekyll::AssetFilter)
