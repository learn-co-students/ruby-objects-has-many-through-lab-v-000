class Song

attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
  end

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
  end

end
