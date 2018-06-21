require 'pry'
class Artist
  attr_accessor :name 
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all
  end
  
  def new_song(name,genre)
    @songs << name 
    name.artist = self 
  end
  
  
  def songs 
   binding.pry 
 end 
 
 
 

end 