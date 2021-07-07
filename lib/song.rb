class Song
  attr_accessor :genre, :artist, :name

@@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    self.genre = genre
    artist.songs << self
    genre.songs << self
    @@all << self

  end
  
  def self.all
    @@all
  end
  
  
end