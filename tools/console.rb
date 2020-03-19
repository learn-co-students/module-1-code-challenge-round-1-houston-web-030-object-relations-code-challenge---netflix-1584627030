# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

pulp_fiction = Movie.new("Pulp Fiction")
no_country_for_old_men = Movie.new("No Country for Old Men")
interstellar = Movie.new("Interstellar")

bill = Viewer.new("Bill")
bob = Viewer.new("Bob")
becka = Viewer.new("Becka")

review_1 = Review.new(bill, pulp_fiction, 10)
review_2 = Review.new(bill, interstellar, 8)
review_3 = Review.new(bob, no_country_for_old_men, 7)
review_4 = Review.new(bob, interstellar, 8)
review_5 = Review.new(becka, pulp_fiction, 9)
review_6 = Review.new(becka, no_country_for_old_men, 6)
review_7 = Review.new(becka, interstellar, 9)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
