class Patient
  attr_accessor :appointments, :doctors

  def initialize(patient_name)
    @patient_name = patient_name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    self.appointments << appointment
  end

  def doctors
    self.appointments.collect { |appointment| appointment.doctor }
  end

end