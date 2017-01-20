class Patient
attr_accessor :name, :appointment


def initialize(name)
  @name = name
  @appointments = []
end# of initialize


def add_appointment(appointment)
@appointments << appointment
end# of add_appointment


def appointments
  @appointments
end# of appointments


def doctors
  @appointments.collect {|appointment| appointment.doctor}
end# of doctors


end# of class
