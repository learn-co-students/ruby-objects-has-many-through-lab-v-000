class Song
  attr_accessor :name, :artist, :genre

  def initialize(song, genre)
    @song = song
    @genre = genre
    genre.add_song(self)
  end
end
