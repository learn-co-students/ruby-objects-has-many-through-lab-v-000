require_relative "./song.rb"
require_relative "./artist.rb"

class Genre 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_song(name, artist)
    Song.new(name, artist, self) 
  end 
  
  def songs 
    Song.all.select {|s| s.genre == self } 
  end 
  
  def artists
    songs.map(&:artist).uniq 
  end
  
  def self.all 
    @@all 
  end 
end
    