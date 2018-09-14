require 'pry'
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
    Song.all.select { |song| song.genre == self }
  end
  
  def artists #=> has many artists through songs
    self.songs.collect { |song| song.artist }
  end
end