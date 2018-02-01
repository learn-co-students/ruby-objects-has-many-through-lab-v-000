class Artist
  attr_reader :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def genres
    self.songs.collect{|o| o.genre}
  end
  
end