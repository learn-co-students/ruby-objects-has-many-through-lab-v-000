require 'pry'
class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@all = [] 
  
  def initialize(song_name, artist, genre)
   # binding.pry
    @name = song_name 
    @artist = artist 
    @genre = genre 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end   
end   