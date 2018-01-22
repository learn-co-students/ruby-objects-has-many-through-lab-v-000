class Artist
  attr_accessor :name, :songs

  def initialize(name)
    self.songs = []
    self.name = name
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

end