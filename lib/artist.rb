class Artist

  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def genres
    self.songs.collect { |song| song.genre }
  end

end
