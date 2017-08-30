class Doctor
    attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(date, doctor)
    appt = Appointment.new(date, doctor)
    self.appointments << appt
    appt.doctor = self
  end



end  # End of Class
