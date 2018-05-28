class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist = Artist.new("New Artist"), genre = Genre.new("cool"))

    @name = name
    @genre = genre
    @artist = artist
    
    @genre.songs << self
    @genre.artists << artist

    @@all << self
  end

  def self.all
    @@all
  end
end
