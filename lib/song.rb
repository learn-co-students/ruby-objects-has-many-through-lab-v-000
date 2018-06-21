def Song 
   @@all = [] 
  attr_accessor :name, :artist, :genre 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all    
  end
  
end 