require 'pry'
class Artist
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
    
    
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    #binding.pry
  end
  
  def songs
    Song.all.select do |song|
      #for each song, does the artist of that song == self?
      song.artist == self
    end
  end
end