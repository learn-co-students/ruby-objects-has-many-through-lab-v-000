require 'pry'

class Artist

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
     Song.new(name, self, genre)

  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    Artist.all.collect {|song| song.genre == self}
  end



end
