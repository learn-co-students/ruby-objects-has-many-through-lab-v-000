class Artist 
  attr_accessor :name 
  
  
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre)
  end 
  
  def songs 
  end 
  
  def genres 
  end 
end 