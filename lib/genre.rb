class Genre  
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name) 
    @name
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs
    Song.all {|song| song.genre == self}
  end
  
  
  def artists
    song.map(artist)
  end 
  
end  