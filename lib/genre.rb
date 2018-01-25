class Genre
  attr_accessor :name, :songs, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def artists
    @songs.collect { |song| song.artist }
  end

end
