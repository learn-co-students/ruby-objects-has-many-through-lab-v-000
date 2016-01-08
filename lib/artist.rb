class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def songs
    @songs
  end
  def genres
    @songs.collect{|song| song.genre}
  end
end