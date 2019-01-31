require 'pry'
class Artist
  
  attr_accessor :name, :genre 
  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
  
  def songs
     Song.all  
  end
  
  def genres
    artist_songs = songs.select {|song| song.artist == self}
    artist_genres = artist_songs.map {|song| song.genre}
    artist_genres 
  end 
end 