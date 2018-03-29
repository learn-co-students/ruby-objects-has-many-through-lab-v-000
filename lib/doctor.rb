class Doctor
  attr_accessor :name, :patients, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
     @appointments << appointment
     appointment.doctor = self
     appointment.patient
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
  end
end

end
