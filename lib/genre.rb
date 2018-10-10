class Genre
  @@all = []
  
  attr_accessor :name, :artist, :genre, :song
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    
  end
  
 
end
  