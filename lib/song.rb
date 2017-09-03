class Song
  attr_accessor :artist, :genre

  def initialize(song, genre)
    @song = song
    @genre = genre
    genre.songs << self
  end

end