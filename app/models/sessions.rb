class Session
    attr_accessor :location, :trainer, :session_name
    @@all = []

    def initialize(location, trainer, session_name)
        @location = location
        @trainer = trainer
        @session_name = session_name
        @@all << self
    end

    def self.all
        @@all
    end

    

end