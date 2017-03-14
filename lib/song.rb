class Song
  attr_accessor :artist, :name, :genre

  def initialize(name, genre)
    @genre = genre
    @name = name
    genre.add_song(self)
  end
end
