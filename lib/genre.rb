class Genre

  attr_accessor :song, :artist, :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def artists
    @songs.collect {|s| s.artist}
  end

  def add_song(song)
   @songs << song
  end
end
