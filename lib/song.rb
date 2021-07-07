class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
    genre.add_song(self)
    genre.add_artist(artist)
  end

  def self.all
    @@all
  end


end
