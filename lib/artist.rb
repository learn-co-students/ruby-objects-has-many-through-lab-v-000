
class Artist

  attr_accessor :songs, :name, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    song.genre.artists << self
    @genres << song.genre
    @songs << song
  end

end