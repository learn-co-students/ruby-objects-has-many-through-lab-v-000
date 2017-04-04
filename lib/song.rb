class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
      @name = name
      genre.songs << self
      @genre = genre
  end
end
