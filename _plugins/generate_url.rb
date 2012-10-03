
module Jekyll

  module AssetFilter
    def post_url(input)
      "/doc/#{input}"
    end

    def category_url(cat)
      cat_dir = @context.registers[:site].config['category_dir']
      "#{cat_dir}/#{CategoryIndex.normalize_name(cat)}"
    end

  end

end

Liquid::Template.register_filter(Jekyll::AssetFilter)
