class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end
end
