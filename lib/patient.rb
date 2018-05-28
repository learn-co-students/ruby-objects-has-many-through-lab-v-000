class Patient
  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(doctor, self, date)
    doctors << doctor
    appointments << appt
    appt
  end
end
