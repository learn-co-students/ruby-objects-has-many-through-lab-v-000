class Patient
  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def new_appointment(doctor, date)
    app = Appointment.new(date, self, doctor)
    @appointments << app
    @doctors << doctor
    app
  end

end
