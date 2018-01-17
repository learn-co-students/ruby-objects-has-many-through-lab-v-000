class Patient

  attr_accessor :name, :appointments, :appointment, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    appointments.collect do |instance|
      instance.doctor
    end
  end

end
