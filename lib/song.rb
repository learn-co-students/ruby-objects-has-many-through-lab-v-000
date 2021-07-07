class Song
  @@all = []

  attr_accessor :artist, :genre, :name

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
end
