class Song

  attr_accessor :name, :genre, :artist

  def initialize (name, genre)
    @name = name
    @artist = artist
    @genre = genre
    genre.add_song(self)
  end

end
