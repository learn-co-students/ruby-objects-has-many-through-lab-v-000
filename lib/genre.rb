class Genre
  attr_accessor :name
  attr_reader :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def add_song(song)
    @songs<<song
    song.genre = self
    @artists << song.artist
  end

end
