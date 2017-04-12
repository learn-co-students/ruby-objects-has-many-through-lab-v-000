class Genre
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_songs(song)
    self.songs.push(song)
  end

  def artists
    self.songs.collect {|s| s.artist}
  end

end
