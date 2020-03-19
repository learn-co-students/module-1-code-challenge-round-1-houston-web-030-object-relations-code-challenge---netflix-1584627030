class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def username
    return @username
  end
  
  def new_username=(username)
    @username = username
  end 

  def reviews
    Review.all.select do | review |
      review.viewer == self
    end
  end  

  def reviewed_movies
    all_movies = []
    Review.all.each do | review |
      if review.viewer == self
        all_movies << review.movie
      end 
    end
    return all_movies.uniq
  end 

  def reviewed_movie(movie)
    if self.reviewed_movies.include? movie
      return true
    else
      return false
    end 
  end 

  def rate_movie(movie, rating)
    self.reviewed_movies.each do | movies |
      if movies.title == movie
        Review.movie.new_rating=(rating)
      else 
        Review.new(self, movie, rating)
      end
    end 
  end 

    

end
