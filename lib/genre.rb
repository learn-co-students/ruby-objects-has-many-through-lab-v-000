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
   
  def new_song(name, artist)
    song = Song.new(name, artist) 
    song.genre = self
  end 
  
  def songs 
    Song.all.select {|song| song.genre = self}
  end 
  
  
    
  
end