require 'test_helper'

class CommentControllerTest < ActionController::TestCase
  test "should get indx" do
    get :indx
    assert_response :success
  end

end
