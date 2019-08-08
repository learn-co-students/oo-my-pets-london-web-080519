require 'pry'
require_relative 'owner.rb'
require_relative 'dog.rb'

class Cat
attr_reader :name, :species 
attr_accessor :owner, :mood 

@@all_cats = []
def initialize(name, owner)
  @name = name
  @owner = owner 
  @mood = 'nervous'
  @species = 'cat'
  @@all_cats << self
end 

def self.all
  @@all_cats 
end 
end