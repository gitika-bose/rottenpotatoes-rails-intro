class Movie < ActiveRecord::Base
  def self.all_ratings()
    @all_ratings = ['G','PG','PG-13','R']
    return @all_ratings
  end

  def self.with_ratings(ratings)
    if ratings == [] or ratings == nil
      where(rating: ['G','PG','PG-13','R'])
    else
      where(rating: ratings)
    end
  end
end
