class Doctor
attr_reader :name
attr_accessor :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment << @appointments
    appointment.doctor = self
  end
end
