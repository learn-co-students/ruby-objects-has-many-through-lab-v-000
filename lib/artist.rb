class Artist
   @@all = []
  attr_accessor :name, :genre 

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all    
  end
  
  def new_song(name,genre)
  end 
  
  def songs 
  end 
  
end 
