class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def reviews
    #returns an array of all the Review instances for the Movie 
    movie_reviews = []
    Review.all.each do |review|
      if review.movie == self 
        movie_reviews.push(review)
      end
    end
    movie_reviews
  end

  def reviewers
    #returns an array of all the Viewer instances that reviewed the Moive
    movie_viewers = [] 
    Review.all.each do |review|
      if review.movie == self 
        movie_viewers.push(review.viewer)
      end
    end
    movie_viewers
  end

  def movie_ratings
    #created method that returns the total number of movie ratings
    total_ratings = 0
    self.reviews.each do |review|
      total_ratings += 1
    end
    total_ratings
  end

  def average_rating
    #retunrs the average of all ratings for the Movie instance
    total = 0
    num_of_movies = self.movie_ratings
      self.reviews.each do |rev|
          total += rev.rating
      end
     return total/num_of_movies
   end

   def self.highest_rated
   #returns the Movie instance with the higest rated average rating
   answer = 0 
   highest_movie = Movie.all[0]     #could possibly use map or an easier method 
   Movie.all.each do |movie|
    if movie.average_rating > highest_movie.average_rating
      highest_movie = movie 
   end
  end
   return highest_movie 
  end
end



