class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all.push(self)
  end

  def self.all
    @@all
  end
  

  def reviews
    #returns an array of Review instances associated with the viewer instance
    viewers_reviews = []
    Review.all.each do |review|
      if review.viewer == self 
        viewers_reviews.push(review)
      end
    end
    viewers_reviews
  end

  def reviewed_movies
    #returns an array of all the Movie instances reviewd by the Viewer instance 
    movies_reviewed = [] 
    Review.all.each do |review|
      if review.viewer == self 
        movies_reviewed.push(review.movie)
      end
    end
    movies_reviewed
  end

  def reviewed_movie?(movie)
    #takes a movie instance as an argument and returns true if the Viewer has reviewed this Movie
    #(if there is a Review instance that has this Viewer and Movie), returns false otherwise 
    Review.all.each do |review|
      if review.viewer == self && movie == review.movie     #GO BACK AND use reviewed_movies method!!!
        return true                                         #to make code DRY if time!!!
      else 
        return false 
      end 
    end
  end

  

  def rate_movie(movie, rating)
    #if the Viewer instance and the passed Movie instance are _not_ already associated,
    #this method should create a new Review instance
    #if the Viewer has already viewed this movie, assigns the new rating to the existing Review instance
     
      if !self.reviewed_movie?(movie)      
        return Review.new({viewer: self, movie: movie, rating: rating})
      else
        self.reviews.each do |revs|
           revs.rating = rating 
           return revs
      end 
    end 

    
  end


    
    
end
