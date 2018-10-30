class Doctor 
  
  attr_accessor :name, :appointments 
  
  @@all = [] 
   
  
  def initialize(name)
    @name = name #A docter initialized with a name and is saved in the @@all array.
    @@all << self 
    @appointments = appointments
  end 
  
  def self.all 
    @@all 
  end 
  
   

end 