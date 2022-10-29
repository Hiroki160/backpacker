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

  def get_average_restaurant(restaurant)
    if restaurant.restaurant_reviews.blank? #.present?
      return "0"
    end

    total_score = restaurant.restaurant_reviews.pluck(:restaurant_score).sum
    review_count = restaurant.restaurant_reviews.count
    review_average = total_score/review_count
    return review_average
  end

  def get_average_activity(activity)
    if activity.activity_reviews.blank? #.present?
      return "0"
    end

    total_score = activity.activity_reviews.pluck(:activity_score).sum
    review_count = activity.activity_reviews.count
    review_average = total_score/review_count
    return review_average
  end

end
