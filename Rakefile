
# http://mikeferrier.com/2011/04/29/blogging-with-jekyll-haml-sass-and-jammit/
desc "Parse compass"
task :parse_compass do
  print "Compiling the compass ..."
  system "compass compile"
  puts "done."
end

desc "Launch preview environment"
task :preview do
  Rake::Task["parse_compass"].invoke
  system "foreman start"
end

desc "Build site"
task :build do |task, args|
  Rake::Task["parse_compass"].invoke
  system "bundle exec jekyll"
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
