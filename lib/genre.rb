class Genre
  attr_accessor :name

  def initalize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect {|song| song.artist}
  end
end
