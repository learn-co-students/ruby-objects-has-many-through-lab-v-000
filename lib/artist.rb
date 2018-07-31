require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def new_song(name,genre)
    Song.new(name,self,genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    genres = []

    self.songs.each do |song|
      genres << song.genre
    end

    genres
  end

  def self.all
    @@all
  end

end
