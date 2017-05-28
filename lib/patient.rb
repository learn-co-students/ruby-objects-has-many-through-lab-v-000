#class Patient initialize with a new name

class Patient

  attr_accessor :name, :doctor, :appointment, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect do |appointment|
    appointment.doctor
    end
  end

end
