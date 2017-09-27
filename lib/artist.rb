class Artist
  attr_accessor :name, :songs, :genres
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
#    @genres  <<  song.genre
    song.artist = self
  end

  def genres
    self.songs.collect { |song| song.genre}
  end

end
