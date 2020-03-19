class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end


   def reviews
    arr = []
     Review.all.each do |movie|
      if viewer.movie == self
        arr << self
      end
    end
    arr
  end

  def reviewers
    arr = []
    Review.all.each do |review|
     if review.movie == self
       arr << review.viewer
     end
   end
   arr
  end

  def average_rating
 total = 0
  Review.all.each do |review|
    total += review.rating
  end
  total / Review.all.count
  end
  
  

end
