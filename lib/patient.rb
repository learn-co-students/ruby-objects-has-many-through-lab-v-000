class Patient
attr_accessor :name

  def initialize(name)
    @name = name
    @appointment = []
  end

  def add_appointment(appointment)
    @appointment << appointment
    appointment.patient = self
  end

  def appointments
    @appointment
  end

  def doctors
    self.appointments.collect do |app|
      app.doctor
    end

  end
end
