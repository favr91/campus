require 'test_helper'

class ChanelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chanel_index_url
    assert_response :success
  end

end
