class Doctor

  attr_accessor :name, :appointment, :appointments, :doctor, :patient, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
