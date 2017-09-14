class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def songs
    self.songs.dup.freeze
  end

  def genres
    self.songs.collect{|s| s.genre}
  end
end
