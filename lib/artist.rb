class Artist
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(new_song)
    new_song.artist = self
    self.songs << new_song
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect {|song| song.genre}
  end
end
