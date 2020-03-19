class Review
    @@all = []
    attr_accessor :viewer, :movie, :rating
    # I didn't see instruction specify if the above attributes can be changed,
    # so I'm leaving them in the attr_accessor, but an `attr_reader` would work just fine

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end 

    def self.all
        @@all
    end

end
