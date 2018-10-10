require 'pry'
class Artist
  @@all = []
  
  attr_accessor :name, :genre, :song
  
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
    
  def genres
    Genre.all.select do |genre|
       # binding.pry
    genre.artist = self
    end
  end
end