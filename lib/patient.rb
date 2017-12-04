class Patient
attr_accessor: appointments
attr_reader: name

def initialize(name)
  @name = name
  @appointments = []
end

def add_appointment(appointment)
  @appointments << appointment
  appointment.patient = self
end
