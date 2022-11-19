require "test_helper"

class Admin::ActivityCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_activity_comments_index_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_activity_comments_destroy_url
    assert_response :success
  end
end
