class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self #appointment belongs to the patient
  end

  def appointments
    @appointments
  end

  #has many doctors through appointment
  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
