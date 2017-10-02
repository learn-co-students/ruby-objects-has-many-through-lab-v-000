class Genre

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    songs.collect { |s| s.artist }
  end

  def add_song(song)
    @songs << song
  end

end
