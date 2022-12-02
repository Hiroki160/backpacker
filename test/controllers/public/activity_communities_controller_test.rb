require "test_helper"

class Public::ActivityCommunitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_activity_communities_index_url
    assert_response :success
  end

  test "should get create" do
    get public_activity_communities_create_url
    assert_response :success
  end

  test "should get show" do
    get public_activity_communities_show_url
    assert_response :success
  end

  test "should get destroy" do
    get public_activity_communities_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get public_activity_communities_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_activity_communities_update_url
    assert_response :success
  end

  test "should get new" do
    get public_activity_communities_new_url
    assert_response :success
  end
end
