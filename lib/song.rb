class Song

  attr_accessor :name, :artist, :genre

  @songs = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end

  def add_song
    @songs << song
    song.genre = self
  end

  def songs
    @songs
  end




end
