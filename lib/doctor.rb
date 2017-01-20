class Doctor
attr_accessor :name

def initialize(name)
  @name = name
  @appointments = []
end# of initialize


def appointments
  @appointments
end# of appointments


def patients
  @appointments.collect {|appointment| appointment.patient}
end# of patients


end# of class
