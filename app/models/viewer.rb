class Viewer
  @@all = []
  attr_accessor :username

  def initialize(username)
    @username = username
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.viewer == self}
  end 

  def reviewed_movies
    self.reviews.map {|review| review.movie}
  end 

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    Review.new(self, movie, rating)
  end 

  def self.all
    @@all
  end
  
end
