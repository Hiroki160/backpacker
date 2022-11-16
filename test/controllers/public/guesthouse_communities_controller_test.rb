require "test_helper"

class Public::GuesthouseCommunitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_guesthouse_communities_index_url
    assert_response :success
  end

  test "should get create" do
    get public_guesthouse_communities_create_url
    assert_response :success
  end

  test "should get show" do
    get public_guesthouse_communities_show_url
    assert_response :success
  end

  test "should get destroy" do
    get public_guesthouse_communities_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get public_guesthouse_communities_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_guesthouse_communities_update_url
    assert_response :success
  end
end
