class Genre 
  attr_reader :name 
  @@all_genres = []
  
  def initialize(name)
    @name = name 
    @@all_genres << self 
  end 
  
  def self.all 
    @@all_genres
  end 
  
  def new_song(name, artist)
    Song.new(name, artist, self)
  end 
  
  def songs
     Song.all.select {|song| song.genre == self}
  end 
  
  def artists
    songs.map {|song| song.artist}
  end 
  
end 