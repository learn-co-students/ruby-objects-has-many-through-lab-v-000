class Song

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end

  attr_accessor :artist, :genre

  
end
