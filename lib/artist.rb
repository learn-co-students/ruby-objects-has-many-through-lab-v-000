require 'pry'
class Artist
  
  attr_accessor :name, :genre, :songs   
  @@all = []

  def initialize(name)
    @name = name
    @songs = [] 
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def new_song(name, genre)
    song1 = Song.new(name, self, genre)
    @songs << song1
    song1 
  end 
  
  def songs
    songs = @songs 
    songs.select {|song| song.artist == self}  
  end
  
  def genres
    songs = @songs  
    songs.map {|song| song.genre}
  end 
end 