require "test_helper"

class Public::PlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_places_index_url
    assert_response :success
  end
end
