require "test_helper"

class Public::ActivityCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get public_activity_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_activity_comments_destroy_url
    assert_response :success
  end

  test "should get index" do
    get public_activity_comments_index_url
    assert_response :success
  end
end
