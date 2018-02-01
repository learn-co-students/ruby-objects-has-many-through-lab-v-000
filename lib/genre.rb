class Genre
  attr_reader :name, :songs, :artist
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def artists
    self.songs.collect{|o| o.artist}
  end
  
end