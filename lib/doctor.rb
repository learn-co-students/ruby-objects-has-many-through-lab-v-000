	class Doctor
  attr_accessor :name, :appointments
    @@all =[]
    
  def self.all       
   @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(patient,date)
  Appointment.new(patient,self,date)
  
  end
  
  def appointments
    Appointment.all.select do |appointment|
     appointment.doctor == self
   end
  end
   
   def patients
    self.appointments.collect do |appointment|
      appointment.patient
  
    end
  end
end