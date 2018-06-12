class Song
  @@all = []

  attr_reader :genre
  attr_accessor :artist

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end
end
