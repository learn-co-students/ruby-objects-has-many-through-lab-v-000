class Song
  attr_accessor :name, :artist, :genre

  @@all = Array.new

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
