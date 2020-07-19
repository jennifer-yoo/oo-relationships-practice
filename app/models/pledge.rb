class Pledge
    attr_accessor :project, :user, :amount
    @@all = []

    def initialize(project, user, amount)
        @project = project
        @user = user
        @amount = amount
        @@all << self
        project.pledge_amount += amount
        project.pledge_count += 1
    end

    def self.all
        @@all
    end

end
