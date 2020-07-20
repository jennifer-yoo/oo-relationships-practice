class Project
    attr_accessor :name, :creator, :goal_amount
    attr_reader :pledge_total, :pledge_count
    @@all = []

    def initialize(name, creator, goal_amount, pledge_total=0, pledge_count=0)
        @name = name
        @creator = creator 
        @goal_amount = goal_amount
        @pledge_total = pledge_total
        @pledge_count = pledge_count
        @@all << self
    end

    def self.all
        @@all
    end

    def user_pledged_on_project #returns users pledged on project
        Pledge.all.map {
            |pled_instance| pled_instance.user if pled_instance.project == self
        }.compact
    end

    def project_pledges  #pledges associated with X project
        Pledge.all.select {
            |pled_instance| pled_instance if pled_instance.project == self }
    end

    def add_amount(amount) #adds to pledge amount
        @pledge_total += amount
    end

    def add_count
        @pledge_count += 1
    end

    def self.no_pledges
        self.all.select {
            |proj_instance| proj_instance.pledge_total == 0
        }
    end

    def self.above_goal
        self.all.select {
            |proj_instance| proj_instance.pledge_total >= proj_instance.goal_amount
        }
    end
 
    def self.most_backers
        most_backers = nil
        base_num = 0

        self.all.each do |proj_instance| 
            if proj_instance.user_pledged_on_project.count > base_num
                base_num = proj_instance.user_pledged_on_project.count
                most_backers = proj_instance.user_pledged_on_project
            end
        end
        most_backers
    end
end