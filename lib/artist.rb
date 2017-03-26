class Artist
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    song.genre.artists << self
    @songs << song
    @genres << song.genre
  end

  def songs
    @songs
  end

  def genres
    @genres
  end
end
