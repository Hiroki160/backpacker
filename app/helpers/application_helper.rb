module ApplicationHelper

  def get_average(guesthouse)
    total_score = guesthouse.guesthouse_reviews.pluck(:guesthouse_score).sum
    review_count = guesthouse.guesthouse_reviews.count
    review_average = total_score/review_count
    return review_average
  end

end
