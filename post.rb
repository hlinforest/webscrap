# attributes: title, url, points, and item_id, corresponding to the title on Hacker News, the post's URL, the number of points the post currently has, and the post's Hacker News item ID, respectively.

# Post#comments returns all the comments associated with a particular post
# Post#add_comment takes a Comment object as its input and adds it to the comment list.

class Post
  attr_reader :title, :url, :points, :item_id
  attr_accessor :comments
  #@@comments = []
  def initialize(title, url, points, item_id)
    @title = title
    @url = url
    @points = points
    @item_id = item_id
    @comments = []
  end

  def add_comment(comment_obj)
    @comments << comment_obj
  end

  def to_string
    self.class.to_s.downcase
  end

end