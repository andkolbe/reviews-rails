require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'html_pages/home'
    # this allows us to test for the presence of a link and url combination
    # specify the tag name <a> and the attribute href. Rails inserts the value of the path inside the question mark
    assert_select "a[href=?]", root_path, count: 2 # one for the logo and one for the nav link
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
end
