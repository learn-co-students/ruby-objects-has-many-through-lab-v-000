class Genre 
  attr_accessor :song_name, :artist_name, :genre
  
  @@all_genre = []
  
  def self.all
    @@all_genre
  end
  
  def initialize(genre)
    @genre = genre
    @@all_genre << self
  end
  
  def self.new_song(song_name, artist_name)
    song_name = Song.new(song_name, artist_name)
    song_name.artist_name = artist_name
    song_name.artist_name
  end    
  
  def songs(song_name)
    song_name.select { |sn| sn == song_name.artist_name }
  end
  
  def artists(artist_name)
    artist_name.select { |artist| artist == artist_name }
  end
end