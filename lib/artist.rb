require 'pry'
class Artist 
  attr_accessor :name
  
  @@all = []
  @songs = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end
  
  def songs 
    Song.all.select {|songs| songs.artist == self}
  end

  def genres 
    songs.collect {|songs| songs.genre}
  end

end   
  