class Doctor
  attr_accessor :name, :patient

  def initialize(name)
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
    self.appointments.collect do |doctor|
      doctor.patient
    end
  end
end
