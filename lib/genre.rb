class Genre
  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def artists
    self.songs.collect {|song| song.artist}
  end

end
