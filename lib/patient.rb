class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    # add song to Genre.songs
    @appointments << appointment
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
