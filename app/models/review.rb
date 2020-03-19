class Review

  attr_accessor :movie, :viewer, :rating

  @@all = []
  def initialize(movie, viewer, rating)
    @movie = movie
    @viewer = viewer
    @rating = rating
    self.class.all << self
  end

  def self.all
    @@all
  end


end
