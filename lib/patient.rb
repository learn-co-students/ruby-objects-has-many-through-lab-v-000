class Patient 
  attr_accessor :name  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end
    
    def self.all 
      @@all 
    end 
    
    def appointments 
      Appointments.all.select {|appointment| appointment.patient == self} 
        end
    end
    
    
    def doctors
      appointments.map(doctor)
        end
    end
 end   