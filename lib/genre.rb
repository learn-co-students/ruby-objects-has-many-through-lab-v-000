class Genre

attr_accessor :name, :songs, :artists

  def initialize(name)
    self.name = name
    self.songs = []
    self.artists = []
  end

  def add_song(song)
    self.songs << song
  end

  def artists
    self.songs.collect{|song|@artists << song.artist}
    @artists
  end

end