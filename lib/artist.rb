require 'pry'
class Artist
  attr_accessor :songs, :genres
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @genres << song.genre
    song.genre.artists << self
  end
end
