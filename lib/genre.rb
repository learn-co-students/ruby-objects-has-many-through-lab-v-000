class Genre

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.genre = self
    self.songs << song
  end

  def artists
    songs.collect { |song| song.artist }
  end

end