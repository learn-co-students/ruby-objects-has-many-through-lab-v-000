class Song

  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
    @artist = artist
  end

  def artist
    @artist
  end

end
