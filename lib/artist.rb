require "pry"
class Artist

  attr_accessor :name, :song, :songs, :genre, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song.genre.artists << song.artist
    genres << song.genre
  end

  def songs
    @songs
  end

end
