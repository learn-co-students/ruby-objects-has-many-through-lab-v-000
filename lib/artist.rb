class Artist
  #attributes
  attr_accessor :name, :songs

  #initialize
  def initialize (name)
    @name = name
    @songs = Array.new
  end

  #instance method
  def add_song (song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.map {|song| song.genre}
  end

end
