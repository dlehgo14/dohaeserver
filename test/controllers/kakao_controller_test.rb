require 'test_helper'

class KakaoControllerTest < ActionDispatch::IntegrationTest
  test "should get keyboard" do
    get kakao_keyboard_url
    assert_response :success
  end

end
