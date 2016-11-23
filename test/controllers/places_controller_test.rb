require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  test "should get cityfeed" do
    get :cityfeed
    assert_response :success
  end

end
