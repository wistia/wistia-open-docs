require 'date'

# http://mikeferrier.com/2011/04/29/blogging-with-jekyll-haml-sass-and-jammit/
desc "Parse compass"
task :parse_content do
  print "Compiling the compass ..."
  system "compass compile"
  puts "done."
  print "Parsing Haml layouts..."
  system(%{
    cd _layouts/haml && 
    for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done
  })
  print "Parsing Haml includes..."
  system(%{
    cd _includes/haml && 
    for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done
  })
  puts "done."
  print "Parsing Haml static pages..."
  system(%{
    cd _static_pages && 
    for f in *.haml; do [ -e $f ] && haml $f ../${f%.haml}.html; done
  })
  puts "done."
end

desc "Launch preview environment"
task :preview do
  Rake::Task["parse_content"].invoke
  system "foreman start"
end

desc "Build site"
task :build do |task, args|
  Rake::Task["parse_content"].invoke
  system "bundle exec jekyll"
end

desc "launch search"
task :test_search do
  system "foreman start -f Procfile_search"
end


desc "Deploy latest code in _site to production"
task :deploy do
  puts "updating github"
  system "git push origin master"
  puts "done."
  puts "pushing to heroku"
  system "git push heroku master"
  puts "done."
end

# add a title to a post like np title="Blah this is my title"
desc "Create a new blog post"
task :np do

  title = ENV["title"] || "new-post"
  slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')

  puts "creating a new post, entitled #{title}"

  path = "_posts/#{ Date.today }-#{ slug }.md"

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

  exit 1

end
