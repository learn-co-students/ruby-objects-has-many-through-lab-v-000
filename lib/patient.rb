class Patient

  attr_accessor :name

def initialize(name)
  @name = name
end


def new_appointment(doctor, date)
 Appointment.new(doctor, self, date)
end


  end
