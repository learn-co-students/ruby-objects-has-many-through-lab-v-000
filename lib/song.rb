class Song
  @@all = []
  attr_accessor :name, :genre, :artist
  def initialize(name, artist, genre)
    @genre = genre
    @name = name
    @artist = artist
    artist.songs << self
    artist.genres << genre
    genre.songs << self
    genre.artists << artist
    @@all << self
  end
  def self.all
    return @@all
  end
end
