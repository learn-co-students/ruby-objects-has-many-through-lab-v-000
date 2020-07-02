class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    @songs.collect {|song| song.genre}
  end

end