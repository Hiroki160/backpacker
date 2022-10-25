module ApplicationHelper

  def get_average(guesthouse)
    if guesthouse.guesthouse_reviews.blank? #.present?
      return "0"
    end

    total_score = guesthouse.guesthouse_reviews.pluck(:guesthouse_score).sum
    review_count = guesthouse.guesthouse_reviews.count
    #byebug
    review_average = total_score/review_count
    return review_average
  end

end
