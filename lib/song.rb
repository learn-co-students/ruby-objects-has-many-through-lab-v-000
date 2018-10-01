class Song
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    genre.songs << self
    genre.artists << artist
    @@all << self
  end
  
  def self.all
    @@all
  end
end