class Genre
  attr_accessor :name, :artists, :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  def artists
    self.songs.collect {|x| x.artist}
  end
end
