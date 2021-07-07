class Artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect { |song| song.genre }
  end


end
