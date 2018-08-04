class Song 
  attr_accessor :song_name, :artist_name, :genre 
  
  @@all_songs = []
  
  def self.all
    @@all_songs
  end
  
  def initialize(song_name)
    @song_name = song_name
    @@all_songs << self
  end
end
