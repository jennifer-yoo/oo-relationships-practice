class Location
    attr_accessor :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trainers_at_location
        Session.all.map { |s| s.trainer if s.location == self}.uniq.compact
    end

    def num_of_trainers
        self.trainers_at_location.count
    end

    def self.least_clients
        self.all.min_by { |l| l.num_of_trainers }
    end
    
end