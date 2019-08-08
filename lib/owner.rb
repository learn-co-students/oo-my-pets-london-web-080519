require 'pry'
require_relative 'dog.rb'
require_relative 'cat.rb'

class Owner
attr_reader :name, :species, :owner
attr_accessor :mood 

@@all_owners = []
def initialize(name)
  @name = name 
  @species = 'human'
  @@all_owners << self
end 

def say_species
  "I am a #{@species}."
end 

def self.all 
  return @@all_owners 
end 

def self.count 
  return @@all_owners.count 
end 

def self.reset_all 
  return @@all_owners.clear
end

def cats
  Cat.all.select {|cat|cat.owner == self}
end

def dogs 
  Dog.all.select {|dog|dog.owner == self}
end 

def buy_cat(name)
  Cat.new(name,owner = self)
end 

def buy_dog(name)
  Dog.new(name,owner = self)
end 

def walk_dogs
  Dog.all.each {|dog| dog.mood = "happy"}
end 

def feed_cats
  Cat.all.each {|cat| cat.mood = "happy"}
end 

def sell_pets 
  Cat.all.each {|cat| cat.mood = "nervous"}
  Dog.all.each {|dog| dog.mood = "nervous"}
  Cat.all.each {|cat| cat.owner= nil}
  Dog.all.each {|dog| dog.owner = nil}
end 

def list_pets 
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end


end