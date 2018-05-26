class Song 
  @@all = []
  attr_accessor :song, :artist, :genre 
  
  def initialize(song, artist, genre)
    @song = song 
    @artist = artist 
    @genre = genre 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 