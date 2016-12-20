class Doctor
  attr_accessor :name, :doctor
  # attr_reader

  def initialize(name)
    @doctor = doctor
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect do |appt|
      appt.patient
    end
  end
end
