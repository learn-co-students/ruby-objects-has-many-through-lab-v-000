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
    genre.map do |genre|
   genre.song 
  end 
  end 
  
  def artists
    genre.map do |genre|
    genre.artist 
    end 
  end 
  
 end 