require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  # 「Homeページのテスト。GETリクエストをhomeアクションに対して発行 (=送信) せよ。そうすれば、リクエストに対するレスポンスは[成功]になるはず」
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    # assert_selectメソッドでは、特定のHTMLタグが存在するかどうかをテストします
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

end
