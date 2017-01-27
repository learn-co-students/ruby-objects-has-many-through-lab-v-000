require 'pry'

class Artist
attr_accessor :name, :songs, :artist, :genres, :genre

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

def add_song(song)
    @songs << song
    song.artist = self
    @genres << song.genre
end

def songs
  @songs
end

end
