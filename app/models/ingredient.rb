class Ingredient
    attr_accessor :name, :calorie_count, :dessert
    @@all = []

    def initialize(name, calorie_count, dessert)
        @name = name
        @calorie_count = calorie_count
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def bakeries
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient)
        self.all.select {
            |i_instance| i_instance.name.include?(ingredient)
        }
    end

end
