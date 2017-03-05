class Genre
  def initialize(genre)
    @name = genre
    @songs = []
  end

  attr_accessor :name, :songs

  def artists
    @songs.collect {|song| song.artist}
  end
end
