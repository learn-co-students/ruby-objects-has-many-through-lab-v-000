class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs.dup.freeze
  end

  def add_song(song)
    raise TypeError unless song.is_a? Song
    @songs << song
    song.artist = self unless song.artist == self
  end

  def genres
    self.songs.collect {|song| song.genre}
  end
end
