class Song

  attr_accessor :artist, :name, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end

  def genre=(genre)
    @genre = genre unless !genre.is_a?(Genre)
  end

  def artist=(artist)
    @artist = artist unless !artist.is_a?(Artist)
  end




end
