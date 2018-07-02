class Doctor
  
  attr_accessor :appointments, :name
  attr_reader :doctors 
  
  @@doctors = []
  
  def initialize(name)
   @name = name
   @@doctors << self 
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end 

  def appointments 
  end 
  
  def patients
  end 
  
end 