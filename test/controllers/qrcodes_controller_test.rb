require "test_helper"

class QrcodesControllerTest < ActionDispatch::IntegrationTest
  test "should get generate" do
    get qrcodes_generate_url
    assert_response :success
  end
end
