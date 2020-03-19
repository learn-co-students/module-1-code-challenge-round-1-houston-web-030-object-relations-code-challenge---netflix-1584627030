# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

mov1 = Movie.new("Killbill")
mov2 = Movie.new("Starwars")
mov3 = Movie.new("Batman")
mov4 = Movie.new("Joker")

view1 = Viewer.new("Ashley")
view2 = Viewer.new("Churro")
view3 = Viewer.new("Rafa")
view4 = Viewer.new("Josh")

review1 = Review.new(view1,mov2,10)
review2 = Review.new(view1,mov1,8)
review3 = Review.new(view2,mov4,5)
review4= Review.new(view4,mov3,8)
review5 = Review.new(view3,mov2,6)











# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
