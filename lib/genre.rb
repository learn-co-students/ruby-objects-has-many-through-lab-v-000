class Genre

  attr_accessor :name, :song, :songs, :artist, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @artists << song.artist

  end

end
