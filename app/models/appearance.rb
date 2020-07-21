class Appearance
    attr_accessor :character
    @@all = []

    def initialize(character)
        @character = character
        @@all << self
    end

    def self.all
        @@all
    end

end


