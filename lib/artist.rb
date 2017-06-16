class Artist
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @songs
  end

  def genres
    @songs.map {|song| song.genre}
  end

  def songs
    @songs
  end
end
