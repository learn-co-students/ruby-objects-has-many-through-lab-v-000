class Genre
  attr_accessor :name, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self unless song.genre == self
  end

  def songs
    @songs
  end

  def artists
    @songs.collect{|s| s.artist}
  end
end
