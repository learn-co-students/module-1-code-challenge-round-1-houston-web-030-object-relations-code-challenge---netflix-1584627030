class Movie
  @@all = []
  attr_accessor :title 

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select {|review| review.movie == self}
  end 

  def reviewers
    self.reviews.map {|review| review.viewer}
  end 

  def average_rating
    average = 0.0 # making this a float so the average returned is not rounded to the nearest integer (view `pulp_fiction.average_rating`)
    self.reviews.each {|review| average += review.rating}
    (average / self.reviews.length * 100).round / 100.0 # limits our float to 2 decimal places so the average returned is user friendly and not unreasonably long (view `interstellar.average_rating`)
  end

  def self.highest_rated
    Review.all.max_by {|review| review.rating}.movie
  end

  # I think there is a way to do the above `#highest_rated` that iterates over `self.all` and uses the 
  # `#reviews` method, but this made more sense to me and I was able to condense it to a single line, 
  # so it's what I went with.

  def self.all
    @@all
  end

end
