class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    self.reviews.map{|review| review.viewer}
  end

  def average_rating
    total = 0
    self.reviews.each do |review|
      total += review.rating
    end
    total = total.to_f/(self.reviews.length).to_f
  end

  def self.highest_rated
    highest_rated_movie = Movie.all[0]
    highest_rating = Movie.all[0].average_rating
    
    Movie.all.each do |movie|
      if movie.average_rating > highest_rating
        highest_rating = movie.average_rating
        highest_rated_movie = movie
      end
    end
    highest_rated_movie
  end

  def self.all
    @@all
  end

end

# #### Movie

# - `Movie#average_rating` #DONE
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated` #DONE
#   - returns the `Movie` instance with the highest average rating.
