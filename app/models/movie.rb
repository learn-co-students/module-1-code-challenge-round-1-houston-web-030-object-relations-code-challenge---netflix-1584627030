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
    array = []
    Review.all.each do |review|
      if review.movie = self
        array << review.movie
      end
    end



  end

end
