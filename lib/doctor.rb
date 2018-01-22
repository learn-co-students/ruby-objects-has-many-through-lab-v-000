class Doctor
  attr_accessor :name, :appointments, :patients
  def initialize(name)
    @appointments = []
    @name = name
  end
  def add_appointment(appointment)
    self.appointments << appointment
  end
  def appointments
    @appointments
  end
  def patients
    appointments.collect do |appointment|
      appointment.patient
    end
  end
end
