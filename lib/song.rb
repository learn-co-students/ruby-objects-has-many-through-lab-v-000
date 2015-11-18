

class Song
  attr_accessor :name, :artist, :genre
  attr_reader

  def initialize(title, genre)
    @name = title
    @genre = genre
    genre.add_song(self)
  end
end