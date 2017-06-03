class Artist
attr_accessor :name

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    #@songs.collect {|song| song.genre}
    self.songs.collect {|song| song.genre}
  end

end