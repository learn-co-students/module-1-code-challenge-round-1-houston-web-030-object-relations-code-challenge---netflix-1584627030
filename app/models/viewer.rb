class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    array = []
    Review.all.each do |viewer|
      if reviews.viewer == reviews
        array << reviews
      end
    end


  end

  
  
end
