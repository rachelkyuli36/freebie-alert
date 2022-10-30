class Event < ActiveRecord::Base
  def self.all_ratings
    ['FOOD', 'MERCH', 'OTHER']
  end

  def self.with_ratings(ratings, sort_by)
    if ratings.nil?
      all.order sort_by
    else
      where(rating: ratings.map(&:upcase)).order sort_by
    end
  end
end
