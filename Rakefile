require 'rspec/core/rake_task'


# HT: http://mikeferrier.com/2011/04/29/blogging-with-jekyll-haml-sass-and-jammit/
desc "Pre Jekyll rendering stuff"
task :pre_jekyll do
  puts "Doing pre-Jekyll schtuffs ..."

  print "  Removing the current stylesheet ... "
  system %{ rm stylesheets/screen.css }
  puts "done."

  print "  Compass Compiling ... \n"
  system %{ compass compile }
  puts "done."

  print "  Getting the Official Wistia Header/Footer ... "
  system %{
    wget -q -O _includes/header.html http://wistia.com/common/header;
    wget -q -O _includes/footer.html http://wistia.com/common/footer
  }
  puts "done."

  print "  Rendering Haml includes ... "
  system(%{
    cd _includes/haml &&
    for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done
  })
  puts "done."

  print "  Rendering Haml layouts ... "
  system(%{
    cd _layouts/haml &&
    for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done
  })
  puts "done."

  print "  Rendering Haml static pages ... "
  system(%{
    cd _static_pages &&
    for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done
  })
  puts "done."

  puts "    All done."
end

desc "Launch preview environment"
task :preview => [:pre_jekyll, :spec] do
  system "foreman start"
end

desc "Build the site"
task :build => :pre_jekyll do
  system "bundle exec jekyll"
end

# note: this is only for production, be careful it will erase your shit
desc "Auto-update the doc. DONT DO THIS LOCALLY!!!!!!"
task :nuclear_update => [:update_from_git, :build]

desc "Updates from origin/master. DONT DO THIS LOCALLY!!!!!"
task :update_from_git do
  `git fetch && git reset --hard origin/master`
end

desc "run specs"
RSpec::Core::RakeTask.new(:spec)

desc "Run RSpec tests!"
task :default => :spec

# add a title to a post like np title="Blah this is my title"
desc "Create a new post"
task :np do

  title = ENV["title"] || "new-post"
  slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')

  puts "creating a new post, entitled #{title}"

  path = "_posts/#{ slug }.md"

  if File.exist?(path)
  	puts "[WARN] File exists - skipping create"
  else
    File.open(path, "w") do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: \"#{ title.gsub(/-/, ' ')}\""
      post.puts "description: "
      post.puts "category: "
      post.puts "---"
    end
  end

  system "mvim #{path}"

  exit 1

end
