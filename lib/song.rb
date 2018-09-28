class Song

  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
    @artist.new_song(self, @genre)
  end


end
