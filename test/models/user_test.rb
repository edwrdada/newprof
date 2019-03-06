require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: 'example', email: 'example@foo.net', 
      profile: "I am Example")
  end

  test "should be valid" do
    @user.valid?
  end
  
  test "name should be presence" do
    @user.name = "  "
    assert_not @user.valid?
  end

  test "email should be presence" do
    @user.email = "   "
    assert_not @user.valid?
  end

  #test "profile should be presence" do
   # @user.profile = "    "
    # assert_not @user.valid?
  #end

  test "name should be not too length" do
    @user.name = "a" * 26
    assert_not @user.valid?
  end

  test "email should be not too length" do
    @user.email = "a" * 101 + "@example.com"
    assert_not @user.valid?
  end

  test "profile should be not too length" do
    @user.profile = "a" * 251
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  #test "email addresses should be unique" do
   # duplicate_user = @user.dup
   # duplicate_user.email = @user.email.upcase
   # @user.save
   # assert_not duplicate_user.valid?
  #end
end
