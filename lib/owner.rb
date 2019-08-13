require 'pry'
require_relative 'cat.rb'
require_relative 'dog.rb'

class Owner
  # code goes here

  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a human."
  end

  def self.count
    all.count
  end

  def self.reset_all
    all.clear
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def cats_count
    cats.count
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def dogs_count
    dogs.count
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
    # binding.pry
  end

  def self.count
    all.count
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end

  def list_pets
    "I have #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end

end

#seed data

# tom = Owner.new("Tom")
# bob = Owner.new("Bob")
# john = Owner.new("John")

# garfield = Cat.new("Garfield", john)
# honey = Cat.new("Honey", bob)
# stripes = Cat.new("Stripes", tom)

#binding.pry
0