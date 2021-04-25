class Song 
  
  attr_accessor :artist, :genre
  attr_reader :name
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 
