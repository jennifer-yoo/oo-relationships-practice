class User
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def projects

    end

    def pledger
        
    end


    def highest_pledge
        pledge_amount = 0
        highest_user = nil

        Pledge.all.each do |pled_instance| 
            if pled_instance.amount > pledge_amount
                pledge_amount = pled_instance.amount
                highest_user = pled_instance.user
            end
        end
        highest_user
    end

    def multi_pledger
        pledge_count = 0 
        Pledge.all.select do |pled_instance|
            if p_instance.user > pledge_amount
            end
        end
    end

    
  
end
