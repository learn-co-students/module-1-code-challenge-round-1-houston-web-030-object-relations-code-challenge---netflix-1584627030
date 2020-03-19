# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


m1 = Movie.new("title1")
m2 = Movie.new("title2")
m3 = Movie.new("title3")


v1= Viewer.new("mel")
v2= Viewer.new("sam")
v3= Viewer.new("ahsen")


r1 = Review.new(v1, m1, 3)
r2 = Review.new(v3, m2, 5)
r3 = Review.new(v2, m3, 7)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
