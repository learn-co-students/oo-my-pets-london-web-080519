require "pry"

class Owner

  attr_reader :name, :species

     @@all = []

      def initialize(name, species = "human")
        @name = name 
        @species = species
        @@all << self
      end 

      def say_species 
        "I am a human." 
      end 

      def self.all 
        @@all 
      end 

      def self.count 
        @@all.count 
      end

      def self.reset_all 
        @@all = []
      end 

      def cats 
        Cat.all.select { |cat| cat.owner == self }
      end 

      def dogs
        Dog.all.select { |dog| dog.owner == self }
      end

      def buy_cat(name)
        Cat.new(name, self, mood = "nervous")
      end 

      def buy_dog(name)
        Dog.new(name, self, mood = "nervou")
      end 

      def walk_dogs 
        dogs.map { |dog| dog.mood = "happy"}
      end 

      def feed_cats 
        cats.map {|cat| cat.mood = "happy"}
      end 

      def sell_pets 
        self.dogs.map { |dog| dog.mood = "nervous"}
        self.cats.map {|cat| cat.mood = "nervous"}
        self.dogs.map { |dog| dog.owner = nil }
        self.cats.map { |cat| cat.owner = nil }
        self.dogs.clear
        self.cats.clear
      end 

      def list_pets 
        "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
      end 







end