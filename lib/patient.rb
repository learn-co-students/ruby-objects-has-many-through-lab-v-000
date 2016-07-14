class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    # add song to Genre.songs
    @appointments << appointment
    # assign the Patient Object to the Appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
