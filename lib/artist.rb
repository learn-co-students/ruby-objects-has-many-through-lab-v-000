class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def songs
    @songs
  end

  def genres
    @genres
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @genres << song.genre
  end

end