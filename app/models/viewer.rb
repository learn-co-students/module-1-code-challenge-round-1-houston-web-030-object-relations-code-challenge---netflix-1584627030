class Viewer
  attr_accessor :username 
  # , :review , :movie

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
    arr = []
    Review.all.each do |movie|
      if movie.viewer == self
        arr << movie
      end
    end
    arr
  end


  def reviewed_movies?(movie)
    arr = []
    Review.all.each do |movie|
      if movie.viewer == self
        return true
      else
        return false
      end
    end
    arr
  end

end
