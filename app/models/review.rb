class Review
 @@all = []
 attr_accessor :viewer , :movie , :rating

 def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    self.class.all << self
 end


  def self.all
    @@all
  end
  


#    def viewer
#     arr = []
#     Review.all.each do |viewer|
#       if viewer == self
#       arr << self
#       end
#     end
#     arr
#    end


#    def movie
#     Review.all.select do |movie|
#         movie 
#     end
#    end
end