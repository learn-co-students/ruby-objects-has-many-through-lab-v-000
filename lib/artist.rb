class Artist
  attr_accessor :name
  attr_reader :songs
  
  def initialize(name)
    @songs = []
    @name = name
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def genres
    g = @songs.collect { |e| e.genre}
    
    g
  end
end