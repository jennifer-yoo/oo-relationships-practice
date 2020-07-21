class Show
    attr_accessor :title, :appearance
    @@all = []

    def initialize(title, appearance)
        @title = title
        @appearance = appearance
        @@all << self
    end

    def self.all
        @@all
    end



end
