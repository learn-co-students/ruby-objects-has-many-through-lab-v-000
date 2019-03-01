class Genre 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end 
  
  def self.all
    @@all << self 
  end
  
  #iterates through all songs and finds the songs that belong to that genre
  # def songs 
  #   @songs = songs
  # end 
  
  #iterates over the genre's collection of songs and collects the artist that owns each song
  # def artists
    
  # end 
  
end  
  