# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


gbh = Movie.new("The Grand Budhapest Hotel")
linxerz = Viewer.new("Linxerz")
gbh_review = Review.new(linxerz,gbh,10)

mff = Movie.new("Mr.Fantastic Fox")
mff_review = Review.new(linxerz,mff,10)

felco = Viewer.new("Felco")
gbh_review2 = Review.new(felco,gbh,9.5)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
