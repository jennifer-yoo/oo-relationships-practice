class Trainer
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def my_clients
        Client.all.select {|c| c.trainer == self}
    end

    def num_of_clients
        self.my_clients.count
    end

    def self.most_clients
        self.all.max_by do |t| t.num_of_clients 
        end
    end
end