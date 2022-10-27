require "test_helper"

class Public::RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_restaurants_index_url
    assert_response :success
  end

  test "should get new" do
    get public_restaurants_new_url
    assert_response :success
  end

  test "should get create" do
    get public_restaurants_create_url
    assert_response :success
  end

  test "should get show" do
    get public_restaurants_show_url
    assert_response :success
  end
end
