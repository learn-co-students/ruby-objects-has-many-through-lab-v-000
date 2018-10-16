class Genre
  
  
  @@all = []
  
  def all 
    @@all 
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