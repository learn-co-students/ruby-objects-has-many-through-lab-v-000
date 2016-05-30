class Song

  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @genre = genre
    @name = name
    genre.songs << self
  end

  def add_song
    genre.songs << self
    artist.songs << self
    genre.artists << self.artist
  end

end