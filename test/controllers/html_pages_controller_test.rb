require "test_helper"

class HtmlPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Reviews"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Reviews"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Reviews"
  end

  test "should get contact page" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Reviews"
  end
end
