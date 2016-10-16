
require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get static_pages_home_url
    #get :home
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
