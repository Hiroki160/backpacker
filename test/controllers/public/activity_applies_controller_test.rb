require "test_helper"

class Public::ActivityAppliesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get public_activity_applies_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_activity_applies_destroy_url
    assert_response :success
  end

  test "should get show" do
    get public_activity_applies_show_url
    assert_response :success
  end
end
