require "test_helper"

class VacationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vacation_new_url
    assert_response :success
  end
end
