class Song
  attr_accessor :artist, :genre

  def initialize(name, genre)
    @name = name
    genre.add_song(self)
  end

  def add_artist(artist)
    @artist = artist
    artist.genres << @genre
  end

end
