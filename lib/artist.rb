require 'pry'
class Artist 
  
  attr_accessor :name
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end 
  
  def new_song(title, genre)
    song = Song.new(title, self, genre)
  end
  
  def songs 
   # binding.pry
    Song.all.select {|song| song.artist == self}
  end
  
  def genres 
    #binding.pry
    self.songs.collect {|song| song.genre}
  end
end