require 'pry'
class Artist
  attr_accessor :name, :songs, :genre, :song

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def song
    self.songs
  end

  def genres
    self.songs.collect { |song| song.genre }
  end
end
