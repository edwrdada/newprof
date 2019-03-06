require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get homes_home_url
    assert_response :success
    assert_template 'homes/home'
  
  end

  test "should get about" do
    get homes_about_url
    assert_response :success
    assert_template 'homes/about'
  end

end
