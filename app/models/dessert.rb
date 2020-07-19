class Dessert
    attr_accessor :name, :bakery
    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end
    
    def my_ingredients
        Ingredient.all.map {
           |i_instance| i_instance if i_instance.dessert == self
         }.compact
    end

    def calories
    #    my_ingredients.map {
    #         |i_instance| i_instance.calorie_count
    #     }.sum
        my_ingredients.sum {
            |i_instance| i_instance.calorie_count
        }
    end

end
