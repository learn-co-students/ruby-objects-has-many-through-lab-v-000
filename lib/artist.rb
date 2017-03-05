class Artist
  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name 

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect { |song| song.genre }
  end
end
