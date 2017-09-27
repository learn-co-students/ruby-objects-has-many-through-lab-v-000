class Genre
  def initialize(name)
    @name = name
    @songs = []
  end
  attr_accessor :name
  
  def add_song(song)
    @songs << song
    song.genre = self
  end
  def songs
    @songs
  end
  def artists
    self.songs.collect{|song| song.artist}
  end
end
