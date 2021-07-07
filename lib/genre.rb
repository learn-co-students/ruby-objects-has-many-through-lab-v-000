require 'pry'
class Genre 
  attr_accessor :name, :songs, :artist
  
  def initialize(genre_name)
    @name = genre_name 
    @songs = []
  end 
  
  def songs 
    @songs 
  end 
  
  def add_song(song)
    @songs << song  
  end
  
  def artists
    @songs.collect {|song| song.artist}
  end 
  
end 