class Genre
  attr_accessor :name
  attr_reader :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def artists
    a = @songs.collect { |e| e.artist }
    a 
  end
end