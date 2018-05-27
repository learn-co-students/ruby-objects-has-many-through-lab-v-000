class Genre
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all = []
  end

  def add_song(song)
    self.songs << song
  end

  def artists
    self.songs.map { |s| s.artist }
  end

end