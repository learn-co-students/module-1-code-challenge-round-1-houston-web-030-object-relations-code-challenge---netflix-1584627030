require 'pry'

class Review
    attr_accessor :viewer_name, :movie_name, :ratings
    @@all = []

    def initialize(viewer_name, movie_name, ratings)
        @viewer_name = viewer_name
        @movie_name = movie_name
        @ratings = ratings.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def rating
        rate = []
        self.class.all.each do |r|
            if r == self
                rate << r.ratings
            end
        end
        rate
    end
# 

    def viewer
        vn = []
        self.class.all.each do |r|
            if r == self
                vn << r.viewer_name
            end
        end
        vn
    end

    def movie
        mn = []
        self.class.all.each do |r|
            if r == self
                mn << r.movie_name
            end
        end
        mn
    end

end


