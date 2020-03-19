class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    return @@all
  end

  def title
    return @title
  end 

  def new_title=(title)
    @title = title
  end 

  def reviews
    all_reviews = []
    Review.all.each do | review |
      if review.movie == self
        all_reviews << review.rating
      end
    end
    return all_reviews
  end 

  def reviewers
    all_reviewers = []
    Review.all.each do | review |
      if review.movie == self
        all_reviewers << review.viewer
      end 
    end
    return all_reviewers
  end 

  def average_rating
    self.reviews.inject(0.0) { |sum, el| sum + el } / reviews.size
  end

  def self.highest_rating
    highest_rating = []
    Review.all.select do | movie |
      highest_rating << movie.rating.average_rating.max_by
    end 
    return highest_rating
  end 

end
