class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @song << song
    song.artist = self
  end

  def songs
    @songs
  end
  
end
