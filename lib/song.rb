class Song
  attr_accessor :name, :artist, :genre # belongs_to an artist, belongs_to a genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end
end
