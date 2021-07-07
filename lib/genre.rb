class Genre
  attr_accessor :name, :songs
  attr_reader :artists
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.genre = self
  end

  def artists
    self.songs.collect {|song| song.artist}
  end

end
