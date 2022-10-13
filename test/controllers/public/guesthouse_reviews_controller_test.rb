require "test_helper"

class Public::GuesthouseReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_guesthouse_reviews_index_url
    assert_response :success
  end
end
