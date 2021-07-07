class Genre 
  attr_accessor :song
  attr_reader :name, :genre   #Doesn't changed 
  
   @@all=[]
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  
  def self.all  #class method
    @@all       #list each genre 
  end 
   
   def songs      #iterates through songs/finds songs that belong to that genre 
   Song.all.select do |song|
     song.genre == self
   end 
  end 
 
  def artists              
   Song.all.map do |song|    #iterates over the genres collection of songs
     song.artist            #collects artistthat own each Song
  end 
end 
  
end 

