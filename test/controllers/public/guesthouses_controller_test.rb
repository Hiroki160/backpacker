require "test_helper"

class Public::GuesthousesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_guesthouses_index_url
    assert_response :success
  end

  test "should get new" do
    get public_guesthouses_new_url
    assert_response :success
  end

  test "should get create" do
    get public_guesthouses_create_url
    assert_response :success
  end

  test "should get show" do
    get public_guesthouses_show_url
    assert_response :success
  end
end
