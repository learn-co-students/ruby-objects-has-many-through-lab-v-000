class Song

  attr_reader :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_songs(self)
  end

  def artist=(artist)
    @artist = artist
  end
end
