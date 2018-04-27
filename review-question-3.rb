# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class Comment
  attr_accessor :comment
  ALL = []

  def initialize(comment)
    @comment = comment
    ALL << self

  end

  def self.all
      ALL
  end

end

class Photo
  attr_accessor :comments
  attr_reader :user
  def initialize
    @comments = []
  end

  def user= (user)
    user.photos << self
    @user = user

  end

  def make_comment(str)
    com = Comment.new(str)
    @comments << com

  end

end

class User
  attr_accessor :name, :photos
  def initialize(name)
    @name = name
    @photos = []

  end
end





photo = Photo.new
user = User.new("Sophie")
photo.user = user
puts photo.user.name
# => "Sophie"
puts user.photos
# => [<photo 1>]


puts photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.make_comment("ok")

puts photo.comments
# => [<comment1>]

puts Comment.all
# => [<comment1>]
