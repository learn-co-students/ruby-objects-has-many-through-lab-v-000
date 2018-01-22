class Doctor
attr_accessor :name,:appointments,:patients
  def initialize(name)
    @name =name
    @appointments =[]
    @patients = []
  end
 
 def add_appointment(appointment)
   self.appointments << appointment
 end

  

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end



end