require 'pry'
class Song 
  attr_accessor :name, :artist, :genre 
  
  @@all =  []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    # binding.pry
    @@all << self
    genre.songs << self
    genre.artists << @artist
    artist.songs << self
    artist.genres << @genre
  end 
  
  def self.all
    @@all
  end
  
 
  
  
end