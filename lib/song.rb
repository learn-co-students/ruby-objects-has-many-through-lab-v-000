class Song
  attr_accessor :name, :genre
  attr_reader :artist
  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end

  def artist=(artist)
    @artist = artist
  end
end
