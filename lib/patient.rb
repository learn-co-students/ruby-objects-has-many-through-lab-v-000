class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments =[]
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end