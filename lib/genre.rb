class Genre 
  
  @@all = []
  
  attr_accessor :name, :songs, :artist 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  
end 