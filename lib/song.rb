class Song

  attr_accessor :artist, :genre, :name

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end
  
end