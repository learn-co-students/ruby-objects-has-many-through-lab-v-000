require 'pry'

class Patient
  attr_accessor :name, :doctor, :appointment

def initialize(name)
  @name = name
  @appointments = []
  @doctors = []
end

def new_appointment(doctor, date)
appointment = Appointment.new(self, doctor, date)
@appointments << appointment
appointment
end

def appointments
  @appointments
end

def add_doctor(doctor)
  @doctors << doctor
end

def doctors
  @doctors
end

end
