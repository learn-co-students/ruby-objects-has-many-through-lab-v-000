require 'pry'
class Genre

  attr_accessor :genre, :name, :songs

  @@all = []

  def initialize(name)
    @genre = genre
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all { |song| song.genre == self }
  end

  def artists
    songs.map { |song| song.artist  }
  end
end
