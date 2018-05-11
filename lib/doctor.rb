class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointments
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
