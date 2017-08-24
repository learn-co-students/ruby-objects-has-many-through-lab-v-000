class Patient
  attr_accessor :name

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

# A patient is instantiated with a name and an empty @appointments array.
# The Patient class needs an instance method, #add_appointment, that takes in an argument of an appointment and adds that appointment to the @appointments array. This method should also tell the appointment that it belongs to this patient.
# The Patient class needs an instance method, #appointments, that returns the content of the @appointments array.
# The Patient class needs an instance method, #doctors, that iterates over that patient's appointments and collects the doctor that belongs to each appointment.
