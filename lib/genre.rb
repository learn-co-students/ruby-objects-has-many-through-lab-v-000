class Genre
  attr_reader :songs, :name
  def initialize(name)
    @songs = []
    @name = name
  end
  def add_song(song)
    @songs << song
  end
  def artists
    @songs.collect { |song| song.artist}
  end
end
