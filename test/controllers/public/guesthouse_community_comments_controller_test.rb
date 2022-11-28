require "test_helper"

class Public::GuesthouseCommunityCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_guesthouse_community_comments_index_url
    assert_response :success
  end

  test "should get destroy" do
    get public_guesthouse_community_comments_destroy_url
    assert_response :success
  end

  test "should get create" do
    get public_guesthouse_community_comments_create_url
    assert_response :success
  end
end
