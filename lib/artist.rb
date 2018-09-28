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
  
  def songs
    Song.all.select do |song|
      song.artist = self 
    end 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end 
  

  def genres 
    songs.collect do  |song|
    song.genre 
   end 
  end 
  
 
  
  
end 