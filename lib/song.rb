class Song
  attr_accessor :name
  attr_reader :artist, :genre

  def initialize(name, genre = nil)
    @name = name
    self.genre = genre
  end

  def artist=(artist)
    raise TypeError unless artist.is_a? Artist
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def genre=(genre)
    raise TypeError unless genre.is_a? Genre
    @genre = genre
    genre.add_song(self) unless genre.songs.include?(self)
  end

end
