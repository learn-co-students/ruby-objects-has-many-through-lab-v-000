class Artist
  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name, :songs

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect {|song| song.genre}
  end
end
