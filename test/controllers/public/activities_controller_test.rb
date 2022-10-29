require "test_helper"

class Public::ActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_activities_index_url
    assert_response :success
  end

  test "should get new" do
    get public_activities_new_url
    assert_response :success
  end

  test "should get create" do
    get public_activities_create_url
    assert_response :success
  end

  test "should get show" do
    get public_activities_show_url
    assert_response :success
  end
end
