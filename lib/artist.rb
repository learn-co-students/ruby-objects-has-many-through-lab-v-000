require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, artist, genre)
    song.artist == self

  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

end
