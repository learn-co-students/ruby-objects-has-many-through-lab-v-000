class Song
  attr_accessor :artist, :genre
  def initialize(name,genre)
    @name = name
    @genre = genre
    @genre.add_song(self)
  end
  def genre
    @genre
  end
  def artist
    @artist
  end
end
