require "test_helper"

class Public::ActivityReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_activity_reviews_index_url
    assert_response :success
  end

  test "should get new" do
    get public_activity_reviews_new_url
    assert_response :success
  end

  test "should get create" do
    get public_activity_reviews_create_url
    assert_response :success
  end
end
