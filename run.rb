require "pry"
require_relative "./lib/owner.rb"
require_relative "./lib/cat.rb"
require_relative "./lib/dog.rb"

victoria = Owner.new("Victoria")
melanie = Owner.new("Melanie")
ginger = Owner.new("Ginger")
hermione = Owner.new("Hermione")
timmy = Owner.new("Timmy")

crookshanks = Cat.new("Crookshanks", hermione)
mr_whiskers = Cat.new("Mr. Whiskers", ginger)
garfield = Cat.new("Garfield", ginger)

lassie = Dog.new("Lassie", victoria)
fido = Dog.new("Fido", ginger)

binding.pry
0
