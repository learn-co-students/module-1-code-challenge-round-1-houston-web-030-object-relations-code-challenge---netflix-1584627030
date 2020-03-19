# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#movies
movie_1 = Movie.new("Movie 1")
movie_2 = Movie.new("Movie 2")
movie_3 = Movie.new("Movie 3")

#viewers
viewer_1 = Viewer.new("Viewer 1")
viewer_2 = Viewer.new("Viewer 2")
viewer_3 = Viewer.new("Viewer 3")
viewer_4 = Viewer.new("Viewer 4")

#reviews
review_1 = Review.new(viewer: viewer_1, movie: movie_1, rating: 100.5)
review_2 = Review.new(viewer: viewer_2, movie: movie_1, rating: 7.5)
review_3 = Review.new(viewer: viewer_3, movie: movie_3, rating: 6.5)
review_4 = Review.new(viewer: viewer_4, movie: movie_2, rating: 9.5)
review_5 = Review.new(viewer: viewer_4, movie: movie_3, rating: 5.5)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
