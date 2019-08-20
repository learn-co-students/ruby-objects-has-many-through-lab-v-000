class Artist
  attr_accessor :songs, :name
  attr_reader

  def initialize(name)
    @songs = []
    @name = name

  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.map { |s| s.genre }
  end

end
