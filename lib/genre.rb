class Genre #has many artists through Song
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def artists
    @songs.collect {|song| song.artist}
  end
end
