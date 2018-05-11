
class Genre
  attr_accessor :name, :songs

  def initialize(genre)
    @name = genre
    @songs = []
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end
end
