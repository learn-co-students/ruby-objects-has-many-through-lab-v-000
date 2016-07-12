class Artist
  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self unless song.artist == self
  end

  def genres
    self.songs.collect{|s| s.genre}
  end
end