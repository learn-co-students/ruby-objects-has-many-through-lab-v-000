class Song
  attr_accessor :name, :artist, :genre

  def initialize(name,genre)
    @name = name
    @genre = genre
    @artist = artist
    genre.add_song(self)
  end

  def artist
    @artist
  end

end
