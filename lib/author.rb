class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def post_counter
    @@post_count +=1
  end

  def add_post(post)
    post_counter
    post.author = self
    self.posts.push(post)
  end

  def add_post_by_title(post_title)
    post_counter
    post_title = Post.new(post_title)
    post_title.author = self
    self.posts.push(post_title)
  end

  def self.post_count
    @@post_count
  end
end