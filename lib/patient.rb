class Patient

  attr_accessor :doctor, :name, :appointment

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def name
    @name
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.each do |appointment|
      @doctors << appointment.doctor
    end
    @doctors
  end

end
