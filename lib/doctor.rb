class Doctor
  attr_accessor :appointments, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    patients = []
    @appointments.each do |appointment|
      patients << appointment.patient
    end
    return patients
  end

end
