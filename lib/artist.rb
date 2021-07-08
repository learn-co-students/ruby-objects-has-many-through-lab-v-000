require 'pry'
class Artist
  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
    @songs = []
    @genre = genre
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |each_song|
      each_song.genre

    end
  end

end
