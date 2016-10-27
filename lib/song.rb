class Song
attr_accessor :song, :genre, :artist

  def initialize(song, genre)
    @song = song
    @genre = genre
    self.genre.add_song(self)
  end

end
