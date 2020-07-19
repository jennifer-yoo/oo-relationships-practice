class Project
    attr_accessor :name, :creator, :goal_amount, :pledge_count, :pledge_amount
    @@all = []

    def initialize(name, creator, goal_amount)
        @name = name
        @creator = creator 
        @goal_amount = goal_amount
        @pledge_count = 0
        @pledge_amount = 0
        @@all << self
    end

    def self.all
        @@all
    end

    # def total
    #     Pledge.all.map do |pled_instance|
    #         if pled_instance.user == self
    #             pled_instance.project.goal_amount - pled_instance.user.amount
    #         end
    #     end
    # end

                
    def no_pledges
    end
        


end