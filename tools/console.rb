# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Shaun Of The Dead")
m2 = Movie.new("Predator")
m3 = Movie.new("Good Fellas")

v1 = Viewer.new("ViceJunior")
v2 = Viewer.new("KindofaBigDillPickle")
v3 = Viewer.new("TheDude")

r1 = Review.new(v1, m2, 5)
r2 = Review.new(v2, m1, 4)
r3 = Review.new(v3, m1, 5)
r4 = Review.new(v3, m2, 3)
r5 = Review.new(v1, m3, 5)
r6 = Review.new(v3, m3, 5)
r7 = Review.new(v1, m1, 5)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
