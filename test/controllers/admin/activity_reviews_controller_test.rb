require "test_helper"

class Admin::ActivityReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_activity_reviews_index_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_activity_reviews_destroy_url
    assert_response :success
  end
end
