class Song

  attr_accessor :name, :genre
  attr_reader :artist

  def initialize(name, genre)
    self.name = name
    self.genre = genre
    genre.add_song(self)
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

end
