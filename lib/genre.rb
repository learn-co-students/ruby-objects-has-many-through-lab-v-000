class Genre 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def songs(song) 
    @songs << song 
  end 
end 