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
    Review.all.select do |r|
      r.movie == self 
    end 
  end 

  def reviewers
    self.reviews.map do |r|
      r.viewer
    end 
  end

  def average_rating
    total = 0 
    self.reviews.each do |r|
       total += r.rating 
    end 
    total / self.reviews.count
  
  end 

  def self.highest_rating
    highest = Movie.all[0]
    Movie.all.each do |m|
      if m.average_rating > highest.average_rating
        highest = m 
      end 
    end
    highest
  end 
  
end
