class Song
  attr_accessor :name, :artist, :genre
  def initialize(name, genre)
    @genres = []
    @name = name
    @genre = genre
  end
end
