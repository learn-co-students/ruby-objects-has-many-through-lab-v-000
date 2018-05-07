class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self if !song.artist.is_a?(Artist)
    self.songs << song
  end

  def genres
    self.songs.collect {|song| song.genre }
  end

end
