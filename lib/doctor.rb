class Doctor

  attr_accessor :name, :appointments

  def initialize(name_in)
    @name = name_in
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
