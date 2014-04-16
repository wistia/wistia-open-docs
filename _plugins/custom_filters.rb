require_relative '../_config'
require_relative 'md_to_html'

module Jekyll
  include MarkdownFilter

  module AssetFilter
    def post_url(input)
      "#{$config.basepath}#{input}"
    end

    def stylesheet_url(input)
      "#{$config.basepath}#{input}.css"
    end

    def javascript_url(input)
      "#{$config.basepath}#{input}.js"
    end

    def image_url(input)
      "#{$config.basepath}#{input}"
    end

    def category_url(cat)
      cat_dir = @context.registers[:site].config['category_dir']
      post_url("#{cat_dir}/#{CategoryIndex.normalize_name(cat)}")
    end

  end

  module CalloutFilter

    def note(input)
      new_html = 
      %(<div class="note">
        <h4><i class="icon-bullhorn"></i> Note</h4>
        #{md_to_html(input)}
        </div>)
    end

    def tip(input)
      %(<div class="tip">
        <h4><i class="icon-thumbs-up"></i> Tip</h4>
        #{md_to_html(input)}
        </div>)
    end

    def alert(input)
      %(<div class="alert">
        <h4><i class="icon-bell"></i> Alert</h4>
        #{md_to_html(input)}
        </div>)
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)
Liquid::Template.register_filter(Jekyll::CalloutFilter)
