class Song
  attr_accessor :song, :genre, :artist

  def initialize(song, genre)
    @song = song
    @genre = genre
    genre.add_song(self)
  end
end