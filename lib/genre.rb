class Genre
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @songs.collect { |song| song.artist }
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end
end
