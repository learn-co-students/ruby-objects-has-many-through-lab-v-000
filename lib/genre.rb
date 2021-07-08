class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_songs(song)
    @songs << song
  end

  def artists
    @songs.collect { |song| song.artist }
  end
end
