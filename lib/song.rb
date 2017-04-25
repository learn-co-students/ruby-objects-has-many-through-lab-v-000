class Song
  attr_accessor :name, :genre
  attr_reader :artist
  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs<<self
  end
  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

end
