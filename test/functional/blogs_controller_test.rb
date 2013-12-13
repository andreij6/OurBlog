require 'test_helper'

#ruby -Itest test/functional/blogs_controller_test.rb

class BlogsControllerTest < ActionController::TestCase
  setup do
    @blog = blogs(:firstblog)
    @blog2 = {
      :title => 'Lorem Ipsum',
      :content => "Valid Content",
      :author => "Andre",
      :category => "Food",
      :description => "valid"
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog" do
    assert_difference('Blog.count') do
      post :create, :blog => @blog2
    end

    assert_redirected_to blog_path(assigns(:blog))
  end

  test "should show blog" do
    get :show, id: @blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog
    assert_response :success
  end

  test "should update blog" do
    put :update, id: @blog, blog: { title: @blog.title, content: @blog.content, author: @blog.author, category: @blog.category, description: @blog.description }
    assert_redirected_to blog_path(assigns(:blog))
  end

  test "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete :destroy, id: @blog
    end

    assert_redirected_to blogs_path
  end
end
