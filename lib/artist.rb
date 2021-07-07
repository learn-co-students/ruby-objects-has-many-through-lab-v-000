require 'pry'
class Artist
  @@all = [ ]
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  def songs
    Song.all.select {|s| s.artist == self}
  end
  def genres
    songs = Song.all.select {|s| s.artist == self}
    songs.uniq.map {|s| s.genre}
  end
# Class methods
  def self.all
    @@all
  end
end
