class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = [ ]
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

end
