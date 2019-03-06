require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  #test "should get index" do
    #get index_user_path
    #assert_response :success
    
  #end

  #test "should get show" do
    #get show_user_path
    #assert_response :success
    
  #end

  #test "should get edit" do
    #get edit_user_path
    #assert_response :success
    
  #end

  test "should get new" do
    get new_user_path
    assert_response :success
    assert_template 'users/new'
  end

end
