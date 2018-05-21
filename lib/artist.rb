require 'pry'

class Artist 
  
  attr_accessor :name
  
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
    song = Song.new(name, self, genre)
    @songs << song
    song
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def genres 
    self.songs.collect {|song| song.genre}
  end
  
end