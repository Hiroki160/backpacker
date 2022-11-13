require "test_helper"

class Public::GuesthouseCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get public_guesthouse_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_guesthouse_comments_destroy_url
    assert_response :success
  end
end
