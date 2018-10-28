class Song
  attr_accessor :name, :genres, :artist

  @@all = []

  def initialize(name, artist, genres)
    @name = name
    @artist = artist
    @genres = genres
    @@all << self
  end

  def self.all
    @@all
  end

end
