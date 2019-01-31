require 'pry'
class Genre
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def songs 
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def self.all 
    @@all
  end
  
  def artists
    Artist.all.select do |song|
      genre_artists = []
      if song.genre == self
        genre_artists << song.artist 
      end
      genre_artists 
    end 
  end 
  
end 