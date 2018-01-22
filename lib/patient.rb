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
    appointment.patient = self
  end

  def doctors
    doctors = []
    self.appointments.each do |appointment|
      doctors << appointment.doctor
    end
    doctors
  end

end
