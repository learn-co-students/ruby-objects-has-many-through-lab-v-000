class Artist

  attr_accessor :name, :songs, :genres

  def initialize(name)
    self.name = name
    self.songs = []
    self.genres = []

  end

  def add_song(song)
    song.artist = self
    self.songs << song
    self.genres << song.genre
    song.genre.artists << self
  end

end
