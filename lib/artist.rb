require 'pry'

class Artist 
  
  attr_accessor :name, :song, :genre
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
    
  def new_song(name, genre)
   song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self.name }    
  end
  
  def genres
  end
  
end