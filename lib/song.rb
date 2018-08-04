class Song 
  attr_accessor :name, :artist, :genre 
  
  @@all_songs = []
  
  def self.all
    @@all_songs
  end
  
  def initialize(song_name, artist, genre)
    @song_name = song_name
    @artist = artist
    @genre = genre 
    @@all_songs << self
  end
  
  
end
