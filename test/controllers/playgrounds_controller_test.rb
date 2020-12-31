require 'test_helper'

class PlaygroundsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get playgrounds_show_url
    assert_response :success
  end

end
