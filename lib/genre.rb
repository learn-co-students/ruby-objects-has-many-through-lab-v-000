require_relative './song.rb'
require_relative './artist.rb'

class Genre 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def songs 
    Song.all.select do |song|
      song.genre == self
    end
  end
  
   def artists 
    self.songs.collect do |song|
      song.artist
    end
  end
  
end