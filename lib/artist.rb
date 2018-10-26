require 'pry'
class Artist
  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
    song.artist = self
  end

  def songs
    @songs.select do |song|
      song.artist == self
    end
    @songs
  end

  def genres
    @songs.select do |genre|
      song.genre == genre
    end
  end

end
