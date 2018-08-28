class Genre 
  attr_accessor :name 
  def initialize(name) 
    @name=name
  end 
  def songs 
    Song.all.select{|s| s.genre==self}
  end 
  def artists 
    self.songs.collect{|s| s.artist}
  end 
    
end
