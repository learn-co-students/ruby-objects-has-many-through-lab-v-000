class Artist
  attr_accessor :songs, :name, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    self.genres << song.genre
    song.genre.artists << self
  end
end