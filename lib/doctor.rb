class Doctor
  attr_accessor :name, :appointments, :patients 

def initialize(name)
  @name = name
  @appointments = []
end

def add_appointment(appointment)
  @appointments << appointment 
  appointment.doctor = self #tells the appt it belong to a doctor 
end

def patients
  self.appointments.collect do |appointment|
    appointment.patient
  end 
end



end