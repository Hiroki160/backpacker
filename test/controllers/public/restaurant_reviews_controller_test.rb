require "test_helper"

class Public::RestaurantReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_restaurant_reviews_index_url
    assert_response :success
  end

  test "should get new" do
    get public_restaurant_reviews_new_url
    assert_response :success
  end

  test "should get create" do
    get public_restaurant_reviews_create_url
    assert_response :success
  end
end
