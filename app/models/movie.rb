class Movie
    attr_accessor :title, :appearance
    @@all = []

    def initialize(title)
        @title = title
        @appearance = appearance
        @@all << self
    end

    def self.all
        @@all
    end



end
