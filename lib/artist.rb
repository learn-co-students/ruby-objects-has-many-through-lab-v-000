require 'pry'

class Artist
  attr_accessor :name, :genres, :artist, :songs

  @@all = []

  def initialize(name)
    @name = name
    @genres = []
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
#    binding.pry
    song = Song.new(self, name, genre)
    @songs << song
    @genres << genre
    song
#    binding.pry
  end



end
