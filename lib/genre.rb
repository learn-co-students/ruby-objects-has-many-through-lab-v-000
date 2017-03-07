class Genre
  #attributes
  attr_accessor :name, :songs

  #initialize
  def initialize(name)
    @name = name
    @songs = Array.new
  end

  #instance methods
  def add_song(song)
    @songs << song
    song.genre = self
  end

  def artists
    self.songs.map {|song| song.artist}
  end

end
