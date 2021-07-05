require 'pry'

class Artist 
  attr_accessor :name, :genre 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @songs = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre)
    the_new_song = Song.new(name, self, genre)
     @songs << the_new_song
     the_new_song
  end 
  
  def songs
    @songs 
  end 
  
  def genres 
    genres = []
    @songs.each do |song|
      genres << song.genre
    end 
    genres 
  end 
end 