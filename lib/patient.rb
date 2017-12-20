class Patient
  attr_accessor :name

#initializes with a name
#has a name
  def initialize(name)
    @name = name
    @appointments = []
  end

#adds an appointment to appointments array and belongs to patient
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

#has many appointments
  def appointments
    @appointments
  end

#has many doctors through appointments
  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
