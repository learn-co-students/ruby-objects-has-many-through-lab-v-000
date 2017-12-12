class Genre
attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def artists
    artists = []
    self.songs.map {|song| artists << song.artist}
    artists
  end

  def add_song(song)
    self.songs << song
    song.genre = self
  end

end
