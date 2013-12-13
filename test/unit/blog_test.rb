require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  # rake db:test:load
  #ruby -Itest test/unit/blog_test.rb
  
  test "the blog has a title" do
     blog = Blog.new
     
     assert !blog.save
     assert !blog.errors[:title].empty?
  end
  
  test "the blog has content" do
     blog = Blog.new
     
     assert !blog.save
     assert !blog.errors[:content].empty?
  end
  
  test "that the blog content is at least 2 letters long" do
    blog = Blog.new
    blog.content = "N"
    
    assert !blog.save
    assert !blog.errors[:content].empty?
  end
  
  test "the blog has an author" do
     blog = Blog.new
     
     assert !blog.save
     assert !blog.errors[:author].empty?
  end
  
  test "the blog has a category" do
     blog = Blog.new
     
     assert !blog.save
     assert !blog.errors[:category].empty?
  end
  
  test "the blog a description" do
     blog = Blog.new
     
     assert !blog.save
     assert !blog.errors[:description].empty?
  end
  
  test "a blog should have a unique title" do
    blog = Blog.new
    blog.title = blogs(:firstblog).title
    
    
    assert !blog.save
    puts blog.errors.inspect
    assert !blog.errors[:title].empty?
  end
  
end
