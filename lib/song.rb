class Song 
  attr_accessor :name, :artist, :genre 
  
  @@all = []
  
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
