class Patient

  #Variables
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  #Methods
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
