require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get admin" do
    get pages_admin_url
    assert_response :success
  end

  test "should get manager" do
    get pages_manager_url
    assert_response :success
  end
end
