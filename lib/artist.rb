class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    self.songs << name
    name.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.map { |s| s.genre}
  end

end
