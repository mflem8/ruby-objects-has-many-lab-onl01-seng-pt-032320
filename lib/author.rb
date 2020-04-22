require "pry"

class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title=(post_title)
    post = Post.new(post_title)
    @posts << post_title
    post.author = post
    @@post_count += 1
  end

  # expect(betty.posts.last.title).to eq("My Great Blog Post")


  def self.post_count
    Post.all.count
  end

end
