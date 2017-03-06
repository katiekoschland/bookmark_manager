table = "posts"

def read
  read = sql("SELECT * FROM #{table}")
end

POSTS
-title
-date

COMMENTS
-comment
-date

USERS
-name
-password

class Post
  include DataMapper::Resource
end

class Comment
  include DataMapper::Resource
end

post = Post.get(id)

Post.create
update
destroy
