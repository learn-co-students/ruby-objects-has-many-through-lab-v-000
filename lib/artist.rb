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
    Song.new(name, self, genre)
  end

  def songs
    #binding.pry
    Song.all.select {|i| i.artist == self}
  end

  def genres
    self.songs.collect {|i| i.genre}
  end

end
