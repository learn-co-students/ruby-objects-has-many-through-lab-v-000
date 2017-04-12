class Artist

  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs#.dup.freeze
  end

  def add_song(song)
    self.songs.push(song)
    song.artist = self
  end

  def genres
    self.songs.collect {|s| s.genre}
  end

end
