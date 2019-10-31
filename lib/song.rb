class Song
  attr_accessor :name, :genre, :artist
  attr_reader

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end

end
