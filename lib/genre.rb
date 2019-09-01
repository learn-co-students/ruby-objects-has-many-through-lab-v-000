class Genre 
  
  attr_accessor :name
  
  @@all = [ ]
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def songs 
    Song.all.select {|item| item.genre == name}
  end
  
  
end