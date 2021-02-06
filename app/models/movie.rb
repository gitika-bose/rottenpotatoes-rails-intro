class Movie < ActiveRecord::Base
  def self.all_ratings()
    @all_ratings = ['G','PG','PG-13','R']
    return @all_ratings
  end

  def self.with_ratings(ratings, sort)
    if sort == nil
      if ratings == [] or ratings == nil
        where(rating: ['G','PG','PG-13','R'])
      else
        where(rating: ratings)
      end
    else
      if ratings == [] or ratings == nil
        where(rating: ['G','PG','PG-13','R']).order(sort)
      else
        where(rating: ratings).order(sort)
      end
    end
  end
end
