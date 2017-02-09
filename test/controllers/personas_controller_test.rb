require 'test_helper'

class PersonasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personas_index_url
    assert_response :success
  end

end
