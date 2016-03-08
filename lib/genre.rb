class Genre
  attr_accessor :name, :songs, :genre, :artist
  def initialize(name)
    @songs = []
    @genres = []
    @name = name
  end
end
