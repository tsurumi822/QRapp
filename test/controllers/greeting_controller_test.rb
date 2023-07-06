require "test_helper"

class GreetingControllerTest < ActionDispatch::IntegrationTest
  test "should get say" do
    get greeting_say_url
    assert_response :success
  end

  test "should get good" do
    get greeting_good_url
    assert_response :success
  end

  test "should get morning" do
    get greeting_morning_url
    assert_response :success
  end
end
