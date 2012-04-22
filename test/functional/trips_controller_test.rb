require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  test "should get summaries" do
    get :summaries
    assert_response :success
  end

  test "should get patterns" do
    get :patterns
    assert_response :success
  end

end
