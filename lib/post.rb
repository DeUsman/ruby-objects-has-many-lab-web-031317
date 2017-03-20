class Post 
  attr_accessor :author, :title

  def initialize(post_title)
    @title = post_title
  end

  def author_name
    if (!self.author)
      return nil
    else
      self.author.name
    end
  end
end