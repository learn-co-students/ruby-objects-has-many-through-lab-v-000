class Doctor
attr_accessor :name, :appointments


def initialize(name)
  @name = name
  @appointments = []
end# of initialize


def add_appointment(appointment)
  @appointments << appointment
  appointment.doctor = self  
end# of add_appointment


def appointments
  @appointments
end# of appointments


def patients
  @appointments.collect {|appointment| appointment.patient}
end# of patients


end# of class
