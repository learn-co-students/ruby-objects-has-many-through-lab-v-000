class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    @@all << self
    @name = name
    @genre = genre
    @artist = artist
  end
  
  def self.all
    @@all
  end
  
  
end