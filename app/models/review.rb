class Review
attr_accessor :movie, :viewer, :rating

    @@all = []

    def initialize(options)
        @viewer = options[:viewer]
        @movie = options[:movie]
        @rating = options[:rating]
        @@all.push(self)
    end

    def self.all 
        @@all
    end 




end
