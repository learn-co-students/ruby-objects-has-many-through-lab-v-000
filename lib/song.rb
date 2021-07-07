

class Song

  attr_accessor :name, :genre, :song, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end

end