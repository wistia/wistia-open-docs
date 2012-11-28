class MisterConfig

  def initialize(opts)
    @opts = opts
  end

  def override!(new_opts)
    @opts.merge!(new_opts)
  end

  def method_missing(method, *args)
    if @opts.has_key?(method)
      @opts[method]
    else
      super
    end
  end
end

$config = MisterConfig.new(
  basepath: '/doc'
  #embedly_api_key: 'override-me-in-_config.local.rb'
)

# try to load the local config, where we override some of the values
begin
  require_relative './_config.local'
rescue LoadError
  # no problem sir, it's ok sir
end
