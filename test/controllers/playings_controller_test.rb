require 'test_helper'

class PlayingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get playings_index_url
    assert_response :success
  end

end
