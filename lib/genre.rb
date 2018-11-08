class Genre 
  
  @@all = [] 
  attr_accessor :name, :songs, :artists  
  
  def initialize(name)
    @name = name 
    @@all << self 
    @songs = []
  end 
  
  def songs 
    @songs 
  end 
  
  def artists 
    songs.collect do |song|
      song.artist 
    end 
    
  end 
  
  def self.all 
    @@all.each do |genre|
      puts "#{genre}"
    end 
  end 
  
  
  
  
  
end 