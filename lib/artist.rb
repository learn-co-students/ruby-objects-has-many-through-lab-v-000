class Artist

attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

end
