class Patient

  attr_accessor :name

def initialize(name)
  @name = name
  @appointments = []
end

def appointments
  @appointments
end

def add_appointment(appointment)
  @appointments << appointment
end


def new_appointment(doctor, date)
  appointment = Appointment.new(self, doctor, date)
  @appointments << appointment
  appointment
end

def doctors
 @appointments.collect do |appointment|
   appointment.doctor
 end
 end



  end
