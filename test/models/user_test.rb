require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # テストを実行する前に動く
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end
  
  test "should be valid?" do
    assert @user.valid?
  end
  
  # 存在しているか
  test "name shoule be present" do
    @user.name = "  "
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email = "  "
    assert_not @user.valid?
  end
  
  # 文字の長さについて
  test "name should not be too long" do
    # 50までOK
    @user.name = "a"*51
    assert_not @user.valid?
  end
  
  test "email should not do too long" do
    # 255文字を上限とする
    @user.email = "a"*244 + "@example.com"
    assert_not @user.valid?
  end
  あ
  
end
