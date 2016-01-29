class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    doctors = []
    @appointments.each do |appointment|
      doctors << appointment.doctor
    end
    return doctors
  end
end