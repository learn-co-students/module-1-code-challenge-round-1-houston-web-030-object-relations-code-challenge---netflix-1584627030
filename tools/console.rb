# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Spiderman")
movie2 = Movie.new("Home Alone")
movie3 = Movie.new("Incedious")

v1 = Viewer.new("Faizah")
v2 = Viewer.new("Tahsin")
v3 = Viewer.new("Samia")

review1 = Review.new(v1,movie2,5)
review2 = Review.new(v2,movie1, 2)
review3 = Review.new(v3,movie3,9)
review4 = Review.new(v1,movie1,8)
review5 = Review.new(v3,movie2,8)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
