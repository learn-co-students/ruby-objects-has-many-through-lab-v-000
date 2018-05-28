require 'pry'

class Genre

  attr_accessor :name, :artist, :genre
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all << artist
  end

  def new_song(name, artist)
    Song.new(genre)

  end

  def songs(title, genre)
    songs.select do |song|
      song.genre
    end
  end

  def artists
    self.genre.collect do |song|
      song.artist
    end
  end

end
