require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get pages_dashboard_url
    assert_response :success
  end

  test "should get form" do
    get pages_form_url
    assert_response :success
  end

  test "should get create" do
    get pages_create_url
    assert_response :success
  end

end
