require 'pry'

class Genre
  attr_accessor :name
  attr_reader :songs, :artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_genre(genre)
    Genre.new(genre)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Song.all.select do |song|
      if song.genre == self
        @artists << song.name
      end
    end
    @artists

  end

end
