require 'rubygems'
require 'data_mapper'

DataMapper.setup(:default, 'postgres://localhost/database_play')

require './models/post'

  DataMapper.finalize
  DataMapper.auto_upgrade!

  @post = Post.new
  @post.title = "Hi Mate"
  @post.save

  @post = Post.create(title: "Hello Makers Academy!", view_count: 4)

  puts @post.inspect

  puts @post = Post.get(2)
  @post.title = "New title"
  @post.save

  @post.update(title: "Newer Title")

  Post.all
