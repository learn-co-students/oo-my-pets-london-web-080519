require 'pry'
require_relative 'owner.rb'
require_relative 'cat.rb'
class Dog
  attr_reader :name, :species
  attr_accessor :owner, :mood 
  
  @@all_dogs = []
  def initialize(name, owner)
    @name = name
    @owner = owner 
    @species = 'dog'
    @mood = 'nervous'
    @@all_dogs << self
  end 
  
  def self.all
    return @@all_dogs 
  end 
  
  end