class Patient
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  # def add_appointment(appointment)
  #   self.appointments << appointment
  #   appointment.patient = self
  # end

  def doctors
    self.appointments.map { |a| a.doctor }
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
end