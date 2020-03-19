class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    movies_reviewed = []
    Review.all.each do |review|
      if review.viewer == self
        movies_reviewed << review.movie
      end
    end
    movies_reviewed
  end

  def reviewed_movie?(movie)
    if self.reviewed_movies.include?(movie)
      return true
    else
      return false
    end
  end

  def rate_movie(movie, rating)
      if Review.all.include?(movie) == false
        Review.new(movie, self, rating)
      end
      Review.all.each do |review|
        if self.reviewed_movies.include?(movie)
          review.rating == rating
        end
      end
  end

end
