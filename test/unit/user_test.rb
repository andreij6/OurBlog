require 'test_helper'

# rake db:test:load
#ruby -Itest test/unit/user_test.rb


class UserTest < ActiveSupport::TestCase
  
  test "the user has entered an email address" do
    user = User.new
    
    assert !user.save
    assert !user.errors[:email].empty?
  end
  
  
  
end
