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
    Review.all.select do |r|
      r.viewer == self 
    end 
  end 

  def reviewed_movies 
    self.reviews.map do |r|
      r.movie 
    end 
  end 

  def reviewed_movie?(movie)
    self.reviewed_movies.each do |r|
      if r.title == movie
      return true
    end
  end
      return false 
  end

  def rate_movie(movie,rating)
    if self
    Review.new(self,movie,rating)

  end 

  
end
