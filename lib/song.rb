class Song 
  
  @@all = []
  attr_accessor :artist, :name, :genre 
  
  def initalize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    @@all << self 
  end 
  
  
  


end 