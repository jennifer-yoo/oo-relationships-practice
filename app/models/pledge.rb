class Pledge
    attr_accessor :project, :user, :amount
    @@all = []

    def initialize(project, user, amount)
        @project = project
        @user = user
        @amount = amount
        project.add_amount(amount)
        project.add_count
        user.add_pledge_counter
        @@all << self
    end

    def self.all
        @@all
    end



end
