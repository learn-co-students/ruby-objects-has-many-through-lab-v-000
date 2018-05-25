

class Genre 
  
  attr_accessor :name, :songs, :artists
  
  @@all = [] 
  
  def self.all 
    @@all
  end
  
  def initialize(name)
    @name = name 
    @songs = []
    @artists = []
    @@all << self
  end
  
end
