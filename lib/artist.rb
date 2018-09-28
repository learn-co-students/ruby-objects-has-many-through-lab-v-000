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
  
  def add_song(song)
    @songs << song 
    song.artist = self 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
      self.add_song(song)
  end 
  
  def songs 
  end 
  
  def genres 
  end 
end 