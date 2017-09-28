class Doctor

attr_accessor :name, :appointment, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |a|
    a.patient
  end
end

end
