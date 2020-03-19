class Viewer
  attr_reader :user_name

  @@all = []

  def initialize(user_name)
    @user_name = user_name
    self.class.all << self
  end

  def self.all
    @@all
  end
  
    def username
        un = []
        self.class.all.each do |v|
            if v == self
                un << v.user_name
            end
        end
        un
    end

    def reviews
      rev = []
      Review.all.each do |r|
        if r.viewer_name == self
          rev << r
        end
      end
      rev
    end

    def reviewed_movies
      reviews.map{|r| r.movie_name}
    end

    def reviewed_movie?(movie)
      if reviewed_movies.include?(movie)
        true
      else
        false
      end
    end



end
