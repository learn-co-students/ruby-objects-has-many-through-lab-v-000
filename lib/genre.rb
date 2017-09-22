class Genre
  attr_accessor :name, :song, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def artists
    @songs.collect { |song| song.artist }
  end


end
