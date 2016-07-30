class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    if appointment.class == Appointment
      @appointments << appointment
      appointment.doctor = self
    end
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
