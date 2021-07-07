class Genre
attr_accessor :artist, :name

  def initialize(name)
    @name = name
    @songs = []
    @artist = artist
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    songs.collect { |song| song.artist }
  end

end
