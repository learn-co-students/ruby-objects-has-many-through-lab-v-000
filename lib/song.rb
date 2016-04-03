class Song

  attr_accessor :name

  def initialize(name, genre)
    @genre = genre
    @name = name
    genre.add_song(self)
  end

  def genre=(genre)
    @genre = genre
  end

  def genre
    @genre
  end

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
  end
end
