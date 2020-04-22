class Post
  attr_accessor :author, :name

  @@all = []

  def initialize(name)
    @name = name
    title = name
    @@all << title
  end

  def posts
    post = Post.new(post)
    @@all << post
    post.author = self
    @posts << post
  end

  def author=(author_obj)
    @author = author_obj
    self.author.posts << self
  end


  def title=(title)
    @title = title
    @@all << title
  end

  def Post.all
    @@all
  end

  def author_name
    self.author ? self.author.name : nil
  end
end
