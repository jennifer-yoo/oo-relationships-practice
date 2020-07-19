require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# p1 = Project.new(1000)
# p2 = Project.new(2000)
# p3 = Project.new(500)
# p4 = Project.new(100000)
# p5 = Project.new(5000)

# u1 = User.new(500, "Backer")
# u2 = User.new(0, "Creator")
# u3 = User.new(10, "Backer")
# u4 = User.new(25, "Backer")
# u5 = User.new(0, "Creator")
# u6 = User.new(1000, "Backer")
# u7 = User.new(200, "Backer")

# pled1 = Pledge.new(p1, u1, 500)
# pled2 = Pledge.new(p1, u2, 0)
# pled3 = Pledge.new(p4, u5, 10)
# pled4 = Pledge.new(p4, u7, 25)
# pled5 = Pledge.new(p2, u3, 0)
# pled6 = Pledge.new(p3, u4, 1000)
# pled7 = Pledge.new(p5, u4, 200)
# pled8 = Pledge.new(p1, u4)
# pled9 = Pledge.new(p3, u4)

b1 = Bakery.new("Vincent's")
b2 = Bakery.new("Jenn's")
b3 = Bakery.new("Ian's")

d1 = Dessert.new("Pie", b1)
d2 = Dessert.new("Cake", b2)
d3 = Dessert.new("Muffin", b3)
d4 = Dessert.new("Cookie", b3)
d5 = Dessert.new("Cupcake", b3)

i1 = Ingredient.new("Sugar", 13, d1)
i2 = Ingredient.new("Egg", 2, d1)
i3 = Ingredient.new("Flour", 25, d3)
i4 = Ingredient.new("Cream", 70, d4)
i5 = Ingredient.new("Heavy Cream", 70, d2)


binding.pry
0