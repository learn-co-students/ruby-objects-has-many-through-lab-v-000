class Artist

  attr_accessor :name, :song, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    @songs
  end

  def genres
    @songs.collect {|s| s.genre}
  end


end
