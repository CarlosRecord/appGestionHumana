require "test_helper"

class TimesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get times_new_url
    assert_response :success
  end
end
