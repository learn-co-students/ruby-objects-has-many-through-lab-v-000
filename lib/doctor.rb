class Doctor
attr_accessor :appointments, :name

def initialize (name)
  @name = name
  @appointments = []
end

def appointments
  @appointments
end

def patients
  @appointments.collect { |appointment| appointment.patient }
end

def add_appointment (appointment)
  @appointments << appointment
  appointment.doctor = self
end

end
