class Song

  attr_accessor :artist, :genre

  def initialize(name, genre)
    @name  = name
    @genre = genre
    self.genre = genre
    genre.add_song(self)
  end
end
