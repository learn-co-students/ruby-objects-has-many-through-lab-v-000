class Song

  attr_accessor :artist, :genre
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end
end
