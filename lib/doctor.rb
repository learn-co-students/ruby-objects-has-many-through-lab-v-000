class Doctor

  attr_accessor :name, :appointments, :patients

  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end


end
