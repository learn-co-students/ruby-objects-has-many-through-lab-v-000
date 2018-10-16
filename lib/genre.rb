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
  
  def songs 
    self.map do |genre|
   self.song 
  end 
  end 
  
  def artists
    self.map do |genre|
    self.artist 
    end 
  end 
  
 end 