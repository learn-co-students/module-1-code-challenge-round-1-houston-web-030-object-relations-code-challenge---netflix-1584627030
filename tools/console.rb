# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


m1 = Movie.new("Lion King")
m2 = Movie.new("Wolverin")
m3 = Movie.new("Life")
m4 = Movie.new("T-34")

v1 = Viewer.new("Ruth")
v2 = Viewer.new("JJ")
v3 = Viewer.new("Becky")

r1 = Review.new(m1, v2, 5)
r2 = Review.new(m2, v1, 3)
r3 = Review.new(m3, v3, 2)
r4 = Review.new(m3, v1, 5)
r5 = Review.new(m3, v2, 4)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
