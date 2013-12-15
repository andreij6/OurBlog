class BlogSweeper < ActionController::Caching::Sweeper
  observe Blog
  
  def sweep(blog)
    expire_page blogs_path
    expire_page blogs_path(blog)
    expire_page "/"
    FileUtils.rm_rf "#{page_cache_directory}/blogs/page"
  end
  
  alias_method :after_update, :sweep
  alias_method :after_create, :sweep
  alias_method :after_destroy, :sweep
end