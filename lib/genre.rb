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
   
  def new_song(title, artist)
    song = Song.new(title, self, artist) 
    song.genre = self
  end 
  
  def songs 
    Song.all.select {|song| song.genre = self}
  end 
  
  
    
  
end