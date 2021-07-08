class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    @appointments.collect do |x|
      x.patient
    end
  end
end
