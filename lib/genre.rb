class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.genre = self
  end

  def songs
    self.songs
  end

  def artist
    self.songs.collect{|s| s.artist }
  end
end
