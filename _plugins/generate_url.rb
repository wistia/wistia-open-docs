require_relative '../_config'

module Jekyll

  module AssetFilter
    def post_url(input)
      "#{BASEPATH}#{input}"
    end

    def stylesheet_url(input)
      "#{BASEPATH}#{input}.css"
    end

    def javascript_url(input)
      "#{BASEPATH}#{input}.js"
    end

    def category_url(cat)
      cat_dir = @context.registers[:site].config['category_dir']
      post_url("#{cat_dir}/#{CategoryIndex.normalize_name(cat)}")
    end

  end

end

Liquid::Template.register_filter(Jekyll::AssetFilter)
