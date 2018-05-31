

class Doctor 
  
  attr_accessor :name, :date, :appointments, :patients
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(patient,date)
    appointment =  Appointment.new(patient,self, date)
    @appointments << appointment
    appointment
  end
   
   def patients 
    @patients = @appointments.collect{|appointment| appointment.patient}
   end
   
    

end