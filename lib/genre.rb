class Genre
  attr_accessor :name, :songs

  def initialize(genre_name)
    @name = genre_name
    @songs = []
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

end
