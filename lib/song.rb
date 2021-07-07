class Song
  attr_accessor :genre, :artist

  def initialize(name,genre)
    @name = name
    @genre = genre
    @artist = artist
    genre.add_song(self)
  end

end
