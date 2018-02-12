class Genre
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def artists
    self.songs.map { |song| song.artist }
  end
end
