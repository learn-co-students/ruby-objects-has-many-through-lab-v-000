require_relative "song"
require 'pry'

class Artist

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @genres = []
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    genre.artists << self
    genre.songs << song
    song
  end

  def songs
    Song.all.select{|song| song.artist == self }
  end

  def genres
    Genre.all.select{|genre| genre.artists.include?(self)}
  end

end
