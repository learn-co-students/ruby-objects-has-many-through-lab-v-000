class Song

  attr_accessor :name, :artist, :genre

@@all_songs = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all_songs << self
  end

  def self.all
    @@all_songs
  end

end
