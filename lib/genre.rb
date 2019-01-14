class Genre 
  attr_accessor :name, :song, :artist, :genre 
  
  @@all = []
  
  def initialize(name)
    @name = name
   
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def songs 
    songs.select {|song| song.genre} 
  end
  
  def artists 
    songs.collect {|song| song.artist}
  end
  
end 