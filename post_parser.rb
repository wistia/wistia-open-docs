require 'open-uri'
require 'nokogiri'
require 'yaml'
require 'mysql'


def build_posts_hash

  posts_hash = {}

  Dir.glob('_posts/*.md').each do |post|
    file = File.open(post, "r")
    contents = file.read

    contents = contents.split('---',3)
    metadata = contents[1]
    post_text = contents[2]

    metadata_yaml = YAML.load(metadata)
    title = metadata_yaml['title'] || ""
    category = metadata_yaml['category'] || ""
    description = metadata_yaml['description'] || ""

    posts_hash[title] = [title, category, description, post_text]
  end

  posts_hash
end

def build_database

  hash = build_posts_hash
  
  my = Mysql.connect('localhost', 'root', '', 'documentation')
  hash.each do |k,v|
    title = v[0]; category = v[1]; description = v[2]; post_text = v[3];
    stmt = my.prepare("insert into doc_content (title, category, description, content) values (?,?,?,?)")
    stmt.execute(title, category, description, post_text)
  end

end


my = Mysql.connect('localhost', 'root', '', 'documentation')
my.query("select * from doc_content").each do |x|
  puts x
end
