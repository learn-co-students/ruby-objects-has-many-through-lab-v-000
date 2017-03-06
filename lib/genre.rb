class Genre
  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end

end
