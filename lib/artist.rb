#artists have many genres THROUGH their songs
require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all #writer method for listing out all of the instances of artist stored in the @@all array
    @@all
  end

  def new_song(name, genre) #allows us to create new songs and immediately assoc with artist??
    #@@all << ...
    #binding.pry
    Song.new(name, self, genre)
    #creates new song with those 2 arguments
    #song should know that is belongs to the arist
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end
end
