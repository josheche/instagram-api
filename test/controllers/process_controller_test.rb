require 'test_helper'

class ProcessControllerTest < ActionController::TestCase
  test "should get tag" do
    get :tag
    assert_response :success
  end

  test "should get next" do
    get :next
    assert_response :success
  end

end
