class Song 
  attr_accessor :artist, :genre, :name 
  
  @@all = []
  
  def initialize(artist, genre, name)
   @artist = artist 
   @genre = genre
   @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
end 