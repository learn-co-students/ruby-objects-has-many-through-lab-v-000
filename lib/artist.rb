class Artist 
  attr_accessor :name, :genre 
  @@all_artists = []
  
  def initialize(name)
    @name = name 
    @@all_artists << self 
  end 
  
  def self.all
    @@all_artists
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def genres 
    songs.map {|song| song.genre}
  end 
  
end 



