require 'pry'

class Song

  attr_accessor :genre, :song, :artist

  @@all = []

  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
