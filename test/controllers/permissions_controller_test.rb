require "test_helper"

class PermissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get permissions_new_url
    assert_response :success
  end
end
