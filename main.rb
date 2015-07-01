require 'nokogiri'
require_relative 'comment'
require_relative 'post'
require 'pry'
require 'open-uri'
#prototype test


a_html = ARGV[0]
html_file = open(a_html)
doc = Nokogiri::HTML(File.open(html_file))
#binding.pry

# require 'open-uri'

# html_file = open(a_html)
# puts html_file.read

# def extract_usernames(doc)
#   doc.search('.comhead > a:first-child').map do |element|
#     element.inner_text
#   end
# end

# get points
# doc.search('.subtext > span:first-child').map { |span| span.inner_text}

#return item_id
# doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] }

#empty array...for now
# doc.search('.title > a:first-child').map { |link| link.inner_text}
# doc.search('title').map { |link| link.inner_text}
# doc.search('.title > a:first-child').map { |link| link['href']}

# doc.search('.comment > font:first-child').map { |font| font.inner_text}

temp1 = doc.search('title').map { |link| link.inner_text}
temp2 = doc.search('tr.athing > td:nth-child(3) > a').map { |link| link['href']}
temp3 = doc.search('.subtext > span:first-child').map { |span| span.inner_text}
temp4 = doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] }
temp5 = doc.search('.comment > font:first-child').map { |font| font.inner_text}
a_post = Post.new(temp1,temp2,temp3,temp4)
temp5.each do |a_comment|
  temp6 = Comment.new(a_comment)
  a_post.add_comment(temp6)

end
binding.pry


#puts a_post.comments

puts "#{a_post.title}"
puts "#{a_post.url}"
puts "#{a_post.points}"
puts "#{a_post.item_id}"
puts "#{a_post.comments}"

