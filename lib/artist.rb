class Artist

attr_accessor :name, :song, :artist, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist=(self)
  end


  def genres
    
  end

end
