require 'pry'

class Movie
  attr_accessor :title_name

  @@all = []

  def initialize(title_name)
    @title_name = title_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  # def title
  #   self.class.all.select{|m| m.title_name if m == self}
  # end
  def title
    mn = []
    self.class.all.each do |m|
        if m == self
            mn << m.title_name
        end
    end
    mn
end

  #

  def reviews
    rev = []
    Review.all.each do |r|
      if r.movie_name == self
        rev << r
      end
    end
    rev
  end

  def reviewers
    reviews.map{|r| r.viewer_name}
  end

  def average_rating
    (reviews.collect{|r| r.ratings}.sum)/(reviews.length)
  end

  def self.highest_rated ### Was still wotking on this, trying to iterate and find the rating for each movie
    high_r = Review.all[0]
    Review.all.each do |r|
      binding.pry
      if r.average_rating > high_r.average_rating
        high_r = r.movie_name
      end
    end
    high_r
  end

end
