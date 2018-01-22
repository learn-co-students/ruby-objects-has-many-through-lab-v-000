class Genre
  attr_accessor :name, :songs, :artists

  def initialize(genre)
    @name = genre
    @songs = []
    @artists = []
  end

end


