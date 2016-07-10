class Genre
  attr_reader :name
  attr_accessor :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.genre = self unless song.genre == self
  end

  def artists
    self.songs.collect{|s| s.artist}
  end
end