class Artist
  @@all = []
  
  attr_reader :name, :genre
  
  def initialize(name)
    @name = name
    @@all << self
    
  end
  
  def self.all
    @@all 
  end
  
  def new_song(name, genre)
    
    
  end
  
end