require 'pry'

class Artist 
  attr_accessor :name, :songs 
  
  
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @songs = []
  end 
  
 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
     song.artist = self 
    @songs << song.name  
  
    
  end 
  
  def songs 
  end 
  
  def genres 
  end 
end 