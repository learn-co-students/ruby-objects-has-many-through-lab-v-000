class Genre
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name= name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    
  end
  
  
  
  
  
  
  
  
end