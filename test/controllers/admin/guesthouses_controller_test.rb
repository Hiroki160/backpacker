require "test_helper"

class Admin::GuesthousesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_guesthouses_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_guesthouses_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_guesthouses_show_url
    assert_response :success
  end

  test "should get create" do
    get admin_guesthouses_create_url
    assert_response :success
  end
end
