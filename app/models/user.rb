class User
    attr_accessor :name, :user_pledge_count
    @@all = []

    def initialize(name, user_pledge_count=0)
        @name = name
        @user_pledge_count = user_pledge_count
        @@all << self
    end

    def self.all
        @@all
    end

    def add_pledge_counter
        @user_pledge_count += 1
    end


    def self.highest_pledge #return the user with highest pledge
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

    def self.multi_pledger #returns all users pledged to multiple projects (Sam)
        self.all.select { |u_instance| u_instance.user_pledge_count > 1 }
    end

    def self.project_creator
        Project.all.map { |p_instance| p_instance.creator }.compact.uniq
    end

end
