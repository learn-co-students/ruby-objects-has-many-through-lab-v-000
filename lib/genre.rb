class Genre
  attr_accessor :name

  GENRE = []

  def initialize(name)
    @name = name
    @songs = []
    GENRE << self.name
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def artists
    self.songs.collect {|song| song.artist}
  end
end
