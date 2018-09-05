class Song
  @@all = []
  attr_accessor :name
  attr_reader :artist, :genre

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
    artist.new_song(self, genre) unless artist.songs.include?(self)
  end

  def genre=(genre)
    @genre = genre
    genre.new_song(self, artist) unless genre.songs.include?(self)
  end
end