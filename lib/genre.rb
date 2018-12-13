class Genre 
  
  attr_accessor
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end 
  
  def artists 
    self.songs.collect {|song| song.artist}
  end 
  
end  #class end