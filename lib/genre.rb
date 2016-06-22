class Genre
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def artists
    artists_array = @songs.collect {|song| song.artist}
    artists_array
  end

end
