class Genre
  attr_reader :name, :artists

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @songs.collect {|song| song.artist}
  end

  def songs
    @songs
  end

end