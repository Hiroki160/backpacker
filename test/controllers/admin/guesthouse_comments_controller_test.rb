require "test_helper"

class Admin::GuesthouseCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_guesthouse_comments_index_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_guesthouse_comments_destroy_url
    assert_response :success
  end
end
