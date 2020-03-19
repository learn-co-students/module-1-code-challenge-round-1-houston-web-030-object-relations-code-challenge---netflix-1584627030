# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



parasite = Movie.new("Parasite")
momento = Movie.new("Momento")
viewer1 = Viewer.new("Username1")
viewer2 = Viewer.new("Username2")
review1 = Review.new(viewer1, parasite, 10)
# review2 = Review.new(viewer2, momento, 9)
review3 = Review.new(viewer1, momento, 9.5)
review4 = Review.new(viewer2, parasite, 9.5)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
