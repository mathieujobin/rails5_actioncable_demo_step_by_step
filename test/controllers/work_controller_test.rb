require 'test_helper'

class WorkControllerTest < ActionDispatch::IntegrationTest
  test "should get timezones" do
    get work_timezones_url
    assert_response :success
  end

end
