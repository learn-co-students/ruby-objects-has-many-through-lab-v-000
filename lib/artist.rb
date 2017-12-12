class Artist
attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    genres = []
    self.songs.collect {|song| genres << song.genre}
    genres
  end

end
