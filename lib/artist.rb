require 'pry'
class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self unless song.artist == self
  end

  def songs
    @songs.dup.freeze
  end

  def genres
    binding.pry
    song.genre = self unless song.genre == self
  end

end
