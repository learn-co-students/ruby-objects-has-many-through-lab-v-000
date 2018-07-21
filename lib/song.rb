class Song

  attr_accessor :title, :genre, :artist

  def initialize(title, artist, genre)
    @title = title
    @genre = genre
    @artist = artist
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end



end
