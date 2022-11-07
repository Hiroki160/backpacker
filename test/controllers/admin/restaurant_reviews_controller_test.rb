require "test_helper"

class Admin::RestaurantReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_restaurant_reviews_index_url
    assert_response :success
  end

  test "should get update" do
    get admin_restaurant_reviews_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_restaurant_reviews_destroy_url
    assert_response :success
  end
end
