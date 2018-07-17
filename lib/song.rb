class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def intitialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end
end
