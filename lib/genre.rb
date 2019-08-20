class Genre
  attr_accessor :name, :songs


  def initialize(name)
    @name = name
    @songs = []

  end

  def songs
    @songs
  end

  def artists
    self.songs.map { |s| s.artist }
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

end
