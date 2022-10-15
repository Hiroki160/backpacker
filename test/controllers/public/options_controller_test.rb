require "test_helper"

class Public::OptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_options_index_url
    assert_response :success
  end
end
