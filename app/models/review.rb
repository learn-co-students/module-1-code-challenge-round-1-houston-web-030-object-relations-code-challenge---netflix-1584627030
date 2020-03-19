class Review
    attr_accessor :viewer, :movie, :rating

  @@all = []

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def rating
    return @rating
  end 

  def new_rating=(rating)
    @rating = rating 
  end 

  def viewer
    return @viewer
  end

  def movie
    return @movie
  end

  def self.all
    return @@all
  end 

end
