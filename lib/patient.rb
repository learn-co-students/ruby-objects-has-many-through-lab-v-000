class Patient
  attr_accessor :name, :patient, :appointment, :doctor

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

  def appointments
    @appointments
  end

end
