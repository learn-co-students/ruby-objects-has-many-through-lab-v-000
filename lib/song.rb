class Song

  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    genre.songs << self
    genre.artists << artist
    @@all << self
  end

  def self.all
    @@all
  end

end
