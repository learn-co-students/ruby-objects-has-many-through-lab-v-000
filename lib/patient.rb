class Patient

  attr_accessor :name, :appointments

  def initialize(name, appointments = [])
    @name = name
    @appointments = appointments
  end


  def add_appointment(appointment)
    appointment.patient = self
    @appointments << appointment
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
