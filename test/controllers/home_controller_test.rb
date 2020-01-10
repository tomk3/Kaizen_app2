require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get log" do
    get home_log_url
    assert_response :success
  end

end
