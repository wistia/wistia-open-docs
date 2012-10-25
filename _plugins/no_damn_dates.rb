module Jekyll
  class Post


    # silently switch out the MATCHER
    original_verbosity = $VERBOSE
    $VERBOSE = nil
    MATCHER = /^(.+\/)*(\d+-\d+-\d+)?-?(.*)(\.[^.]+)$/
    $VERBOSE = original_verbosity


    # Extract information from the post filename
    #   +name+ is the String filename of the post file
    #
    # Returns nothing
    def process(name)
      m, cats, date, slug, ext = *name.match(MATCHER)
      self.date = date && Time.parse(date) || Time.now
      self.slug = slug
      self.ext = ext
    rescue ArgumentError
      raise FatalException.new("Post #{name} does not have a valid date.")
    end

  end
end
