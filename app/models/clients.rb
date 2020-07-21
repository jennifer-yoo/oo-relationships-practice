class Client
    attr_accessor :name, :trainer
    @@all = []

    def initialize(name, trainer)
        @name = name
        @trainer = trainer
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(new_trainer)
        self.trainer = new_trainer
    end

 
end