class Song
  @@all = []
  attr_accessor :song_name, :artist, :genre
  def initialize(song_name, artist, genre)
    @song_name = song_name
    @artist = artist
    @genre = genre
    @@all << self
  end
  def self.all
    @@all
  end
end
