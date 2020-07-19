class Bakery
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def my_desserts
        Dessert.all.select do |d_instance| 
            d_instance.bakery == self
        end
    end
    
    def ingredients
        my_desserts.map do |d_instance| 
            d_instance.my_ingredients
        end.flatten
    end

    def average_calories
        array = []
        ingredients.each do |d_instance|
           array << d_instance.calorie_count
        end
        array.sum / array.size
    end

    def shopping_list
        self.ingredients.map do |b_instance|
            b_instance.name
        end.join(", ")
    end

end
