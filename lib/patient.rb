class Patient
  attr_accessor :name, :appointments, :doctors

  def initialize (name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment (appointment)
    doctors.index(appointment.doctor) || doctors << appointment.doctor
    appointment.patient = self
    appointments << appointment  # probably should add check for uniqueness
  end

end
