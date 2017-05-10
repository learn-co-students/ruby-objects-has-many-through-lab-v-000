class Patient

attr_accessor :name, :appointment, :doctor

def initialize(name)
@name = name
@appointments = []
end

def add_appointment(appointment)
@appointments << appointment
appointment.patient = self
end

def appointments
@appointments
end

def doctors
@appointments.collect {|appointment| appointment.doctor}
end

end
