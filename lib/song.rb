class Song

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :genre, :artist

  def initialize(name, artist = nil, genre = nil)
    @artist = artist
    @name = name
    @genre = genre
    genre.songs << self if !!genre
    genre.artists << artist if !!genre && !!artist
    @@all << self
  end

end
