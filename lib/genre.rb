require "pry"
class Genre
  attr_accessor :name, :songs, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select{|song| song.genre == self}
  end
  
  def artists
    self.songs.collect{|song| song.artist}
  end
end
