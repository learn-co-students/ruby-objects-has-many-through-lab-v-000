class Genre

attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect {|genre_songs|
      genre_songs.artist}
  end

end
