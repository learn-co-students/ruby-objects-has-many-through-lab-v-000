require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    # initializes with a name and an empty collection of songs
    @name = name
    @songs = []
  end

  def add_song(song)
    # adds a new song to the artist's @songs array and tells that song that it belongs to the artist
    @songs << song
    song.artist = self
  end

  def genres
    # adds a new song to the artist's @songs array and tells that song that it belongs to the artist
    self.songs.map { |song| song.genre }
  end

end
