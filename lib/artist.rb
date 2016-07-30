class Artist

  attr_reader :name, :songs, :genres
  #sattr_accessor :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    songs << song
    song.artist = self
    genres << song.genre
    song.genre.artists << self
  end

end
