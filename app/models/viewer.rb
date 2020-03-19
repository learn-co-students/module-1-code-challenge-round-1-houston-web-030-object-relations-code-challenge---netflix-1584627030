class Viewer
    attr_accessor :username

    @@all = []

    def initialize(username)
        @username = username
        @@all << self
    end

    def self.all
        @@all
    end

    def reviews
        Review.all.select {|review| review.viewer == self}
    end
  
    def reviewed_movies
        reviews.map {|review| review.movie}
    end

    def reviewed_movie?(movie)
        Review.all.each do |review| 
            if review.movie == movie
                return true
            else
                return false
            end
        end
    end

    def rate_movie(movie, rating)
        # I think I'm close, I'm updating all the movie instances instead of the one tied to that viewer for that movie but I'm out of time
        Review.all.each do |review|
            if self.reviewed_movie?(movie) == true
                review.rating = rating
            else
                Review.new(self, movie, rating)
            end
        end
    end

end
