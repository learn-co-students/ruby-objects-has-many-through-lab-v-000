require 'pry'

class Artist
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre) #self refers to artist because we are in the artist class, and the order of name-self-genre needs 
      #to be in the same order as the initialize method in song.rb
  end
    
  def songs
    Song.all.select do |s|
      s.artist == self #self refers to an instance of the Artist class
    end
  end 

  
  def genres
    songs.collect do |artist|
      artist.genre #we use artist because we are calling on a specific artist, not the whole class
    end
  end
  binding.pry
  puts "goodbye"
  
end
