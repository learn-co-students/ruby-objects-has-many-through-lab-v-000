class Genre
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(name)
    @@all << self
  end 
  
end 