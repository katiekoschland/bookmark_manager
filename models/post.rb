class Post
  include DataMapper::Resource

  property :id,   Serial
  property :title,  String
  property :view_count,   Integer

end
