class Artist
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    @genres << song.genre
    song.genre.artists << self
    song.artist = self
  end
end
