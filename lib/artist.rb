class Artist 
  
  attr_accessor :name, :genre
  
  @@all = []      #Artist class needs a class variable @@all that begins as an empty array
 
  def initialize(name)
    @name = name 
    @@all << self #An artist is initialized with a name and is saved in the @@all array.
    @genre 
  end 
  
   def self.all     #.all that lists each artist in the class variable
     @@all 
   end 
   
   def new_song(name,genre)
      
    
   end 
  
  

  
  
  
  
end 