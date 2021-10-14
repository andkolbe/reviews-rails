require "test_helper"

class HtmlPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Reviews"
  end

  test "should get help" do
    get html_pages_help_url
    assert_response :success
    assert_select "title", "Help | Reviews"
  end

  test "should get about" do
    get html_pages_about_url
    assert_response :success
    assert_select "title", "About | Reviews"
  end
end
