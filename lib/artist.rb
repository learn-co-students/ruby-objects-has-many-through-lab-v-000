require 'pry'
class Artist
  @@all = []
  
  attr_accessor :name, :genre, :songs, :artist
  
  def initialize(name)
    @name = name
    @@all << self
    @genre = genre
    
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    #binding.pry
    song = Song.new(name, artist, genre)
    @artist
    
    
     
    
    
  end
end