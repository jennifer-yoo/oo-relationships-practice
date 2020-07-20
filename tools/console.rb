require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jenn = User.new("Jenn")
ian = User.new("Ian")
brian = User.new("Brian")
sam = User.new("Sam")
billy = User.new("Billy")
mary = User.new("Mary")
amit = User.new("Amit")

p1 = Project.new("project1", jenn, 100)
p2 = Project.new("project2", ian, 1000)
p3 = Project.new("project3", brian, 500)
p4 = Project.new("project4", sam, 250)
p5 = Project.new("project5", billy, 8000)

pled1 = Pledge.new(p1, ian, 500)
pled2 = Pledge.new(p1, jenn, 20)
pled3 = Pledge.new(p4, billy, 10)
pled4 = Pledge.new(p4, amit, 25)
pled5 = Pledge.new(p2, brian, 50)
pled6 = Pledge.new(p3, sam, 1000)
pled7 = Pledge.new(p2, sam, 200)
pled8 = Pledge.new(p1, amit, 20)
pled9 = Pledge.new(p3, sam, 25)


binding.pry
0