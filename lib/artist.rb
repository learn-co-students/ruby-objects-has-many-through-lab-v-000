class Artist 
  
  attr_accessor :name, :genre
  
  @@all = [] 
  
  def initialize(name)
    @@all << self
  
  def self.all
    @@all 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, genre)
    song.artist = self 
  end
  
  def songs 
    Songs.all.select{|song| song.artist = self}
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end