class Song 
  
  attr_accessor :artist, :genre, :name
  
  @@all = [] 
  
  def self.all
    @@all
  end 
  
  def initialize(song_name, new_artist, song_genre)
    @artist = new_artist
    @genre = song_genre
    @@all << self
  end 
    
  
  
  
  
end 