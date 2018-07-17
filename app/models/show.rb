class Show < ActiveRecord::Base
  def highest_rating
    Show.maximum(:rating)
  end

  def most_popular_show
    Show.where("rating = ?", highest_rating)
  end

  def lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_show
    Show.where("rating = ?", lowest_rating)
  end

  def ratings_sum
    Show.sum(:rating)
  end

  def popular_shows
    array = []
    Show.where("rating > 5"). each {|t| array << t}
  end

  def shows_by_alphabetical_order
    Show.order(name: :desc)
  end
  
end
