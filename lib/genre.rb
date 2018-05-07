class Genre
  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @artists = @songs.collect {|song| song.artist }
  end
end
