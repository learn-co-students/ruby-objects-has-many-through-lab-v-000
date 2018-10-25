class Artist 
  
  attr_accessor :name 
  
  @@all = []      #Artist class needs a class variable @@all that begins as an empty array
 
  def initialize(name)
    @name = name 
    @@all << self #An artist is initialized with a name and is saved in the @@all array.

  end 
  
   def self.all     #.all that lists each artist in the class variable
     @@all 
   end 

end 