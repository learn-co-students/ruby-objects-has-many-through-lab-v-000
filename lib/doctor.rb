class Doctor
  attr_accessor :name, :appointments
  attr_reader :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    appointments.collect do |appointment|
      appointment.patient
    end
  end
end
