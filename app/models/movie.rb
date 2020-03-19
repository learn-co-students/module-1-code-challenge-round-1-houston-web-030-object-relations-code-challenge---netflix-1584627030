class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    reviewers = []
    Review.all.each do |review|
      if review.movie == self
        reviewers << review.viewer
      end
    end
    reviewers
  end

  def average_rating
    total_rating = 0
    count = 0
    Review.all.each do |review|
      if review.movie == self
        total_rating += review.rating
        count += 1
      end
    end
    avg_rating = total_rating / count
  end

# expected to return movies with the highest rating
# this method should finds the highest_rating
# and return all movies with that highest_rating 

  def self.highest_rated
    highest_rating = 0
    highest_rated_movies = []
    Review.all.max_by do |review|
      if highest_rating < review.rating
        highest_rating = review.rating
      end

    end
  end

end
