class Song
  @@all = []

  attr_accessor :name, :artist, :genre

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    self.class.all << self
  end

end
