class Genre 
  attr_accessor :name
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_song(song, artist)
    Song.new(song, artist, self)
  end 
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    songs.collect {|song| song.artist}
  end 
end 