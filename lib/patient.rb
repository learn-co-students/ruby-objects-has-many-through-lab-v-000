class Patient
  attr_accessor :name, :doctors, :appointments

def initialize(name)
  @name = name
  @appointments = []
  self.doctors = []
end

def add_appointment(appointment)
  @appointments << appointment
  appointment.patient = self 
  self.doctors << appointment.doctor
end

end