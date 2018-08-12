class Song
  attr_accessor :name, :genre, :artist
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    genre.add_song(self)
    @@all << self
  end

  def genre
    @genre
  end

  def artist
    @artist
  end

  def self.all
    @@all
  end
end
