class Patient
  attr_accessor :name, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    @appointments.collect do |appointment|
      appointment.patient = self
    end
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
