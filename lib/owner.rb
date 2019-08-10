
class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat_to_buy)
    Cat.new(cat_to_buy, self)
  end

  def buy_dog(dog_to_buy)
    Dog.new(dog_to_buy, self)
  end

  def walk_dogs
    dogs.select {|dog| dog.mood = "happy"}
  end

  def feed_cats
    cats.select {|cat| cat.mood = "happy"}
  end

  def sell_pets
    #destructive. my pets no longer!
    cats.map! do |cat| 
      cat.mood = "nervous"
      cat.owner = nil
    end
    dogs.map! do |dog| 
      dog.mood = "nervous" 
      dog.owner = nil
    end
  end
  # ^ general pets.mood method to update ?

  def list_pets
    "I have #{cats.length} dog(s), and #{dogs.length} cat(s)."
  end


end