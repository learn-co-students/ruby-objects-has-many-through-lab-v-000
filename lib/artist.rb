class Artist
  @@all = []
  
  attr_accessor :name
  
  def self.all 
    @@all
  end 
  
  def initialize(artist_name)
    @name = artist_name
    @@all << self
  end 
  
  def new_song(song_name, genre)
    Song.new(song_name, self,  genre)
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self 
    end
  end 
  
  def genres
    songs.map do |song|
      song.genre
    end 
  end 

  
end