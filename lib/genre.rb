class Genre
  attr_reader :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def artists
    songs.map do |song|
      song.artist
    end
  end
end