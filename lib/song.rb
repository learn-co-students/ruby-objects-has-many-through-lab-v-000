class Song
  @@all = []  
  attr_accessor :name, :genre, :artist

  def initialize(name, genre, artist)
    @@all << self 
    @name = name
    @genre = genre
    @artist = artist
    genre.new_song(self)
  end
  
  def self.all
   @@all
  end
  
end