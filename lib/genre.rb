require 'pry'
class Genre 
  attr_accessor :name, :songs, :artists
  
  @@all = [ ]
  
  def initialize(name)
    # binding.pry
    @name = name
    @@all << self
    @songs = [ ]
    @artists = [ ]
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, artist, song)
    Song.new(name,self,artist,song)
  end
  
  
 
 
  
end