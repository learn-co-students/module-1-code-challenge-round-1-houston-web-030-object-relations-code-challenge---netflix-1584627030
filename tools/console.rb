# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

isaac = Viewer.new("IsaacUN")
bob = Viewer.new("BobUN")
jan = Viewer.new("JanUN")

movie1 = Movie.new("Movie 1")
movie2 = Movie.new("Movie 2")
movie3 = Movie.new("Movie 3")

rev1 = Review.new(isaac, movie1, 5)
rev2 = Review.new(bob, movie1, 6)
rev3 = Review.new(jan, movie2, 7)
rev4 = Review.new(isaac, movie2, 8)
rev5 = Review.new(bob, movie3, 10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
