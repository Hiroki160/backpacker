require "test_helper"

class Public::CountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_countries_index_url
    assert_response :success
  end
end
