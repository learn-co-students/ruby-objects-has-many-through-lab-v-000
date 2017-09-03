class Genre
  attr_accessor :songs

  def initialize(genre)
    @genre = genre
    @songs = []
  end

  def name
    @genre
  end

  def artists
    songs.collect { |song| song.artist }
  end

end