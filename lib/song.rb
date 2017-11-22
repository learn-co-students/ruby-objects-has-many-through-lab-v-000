class Song

  attr_accessor :artist, :name, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs<<self
  end



end
