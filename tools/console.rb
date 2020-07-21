require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

queens = Location.new("Queens")
westchester = Location.new("Westchester")
brooklyn = Location.new("Brooklyn")

ian = Trainer.new("Ian")
brian = Trainer.new("Brian")
vincent = Trainer.new("Vincent")

jenn = Client.new("Jenn", ian)
ryan = Client.new("Ryan", brian)
bill = Client.new("Bill", ian)
tim = Client.new("Tim", vincent)
rob = Client.new("Rob", ian)

s1 = Session.new(queens, ian, "session1")
s2 = Session.new(queens, brian, "session2")
s3 = Session.new(brooklyn, vincent, "session3")
s4 = Session.new(queens, vincent, "session4")
s5 = Session.new(westchester, ian, "session5")
s6 = Session.new(queens, brian, "session6")






# #movie actors
# meryl = Actor.new("Meryl Streep")
# liam = Actor.new("Liam Neeson")
# tom = Actor.new("Tom Hanks")
# leo = Actor.new("Leonardo DiCaprio")
# robert = Actor.new("Robert Downey Junior")
# chris_evans = Actor.new("Chris Evans")
# murphy = Actor.new("Eddie Murphy")

# #show actors
# grant = Actor.new("Grant Gustin")
# candice = Actor.new("Candice Patton")
# cranston = Actor.new("Brian Cranston")
# carell = Actor.new("Steve Carell")


# #movie characters
# dad = Character.new("Dad", liam)
# forest = Character.new("Forest Gump", tom)
# wilson = Character.new("Wilson", tom,)
# miranda = Character.new("Miranda", meryl)
# leos_character = Character.new("Leo's Character", leo)
# tony_stark = Character.new("Tony Stark", robert)
# steve_rogers = Character.new("Steve Rogers", chris_evans)
# sherman = Character.new("Sherman Klump", murphy)
# buddy = Character.new("Buddy Love", murphy)
# papa = Character.new("Papa Klump", murphy)

# #show characters
# barry_allen = Character.new("Barry Allen", grant)
# iris_west = Character.new("Iris West-Allen", candice)
# walter_white = Character.new("Walter White", cranston)
# michael_scott = Character.new("Michael Scott", carell)

# a1 = Appearance.new(barry_allen)
# a2 = Appearance.new(iris_west)
# a3 = Appearance.new(tony_stark)
# a4 = Appearance.new(steve_rogers)
# a5 = Appearance.new(wilson)
# a6 = Appearance.new(tony_stark)
# a7 = Appearance.new(tony_stark)
# a8 = Appearance.new(tony_stark)
# a9 = Appearance.new(tony_stark)
# a10 = Appearance.new(papa)
# a11 = Appearance.new(sherman)
# a12 = Appearance.new(buddy)


# #movies
# castaway = Movie.new("Castaway", )
# forest_gump = Movie.new("Forest Gump")
# prada = Movie.new("The Devil Wears Prada")
# taken = Movie.new("Taken")
# inception = Movie.new("Inception")
# avengers = Movie.new("The Avengers")
# iron_man = Movie.new("Iron Man")
# iron_man_2 = Movie.new("Iron Man 2")
# iron_man_3 = Movie.new("Iron Man 3")
# spider_man = Movie.new("Homecoming")
# captain_america = Movie.new("Captain America")
# the_flash_movie = Movie.new("The Flash")
# nutty_professor = Movie.new("The Nutty Professor")

# #shows
# office = Show.new("The Office")
# flash = Show.new("The Flash")
# bad = Show.new("Breaking Bad")


binding.pry
0