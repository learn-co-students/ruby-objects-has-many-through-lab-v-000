class Song

  attr_accessor :genre, :song, :artist

  @@all = []

  def initialize(genre, song, artist)
    @genre = genre
    @song = song
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end
end
