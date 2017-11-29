class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end

  def genre=(genre)
    raise AssociationTypeMismatchError, "Genre class is expected" if !genre.is_a?(Genre)
    @genre = genre unless self.genre == genre
  end

  def artist=(artist)
    raise AssociationTypeMismatchError, "Artist class is expected" if !artist.is_a?(Artist)
    unless self.artist == artist
      @artist = artist
      genre.artists << self.artist
    end
  end
end
