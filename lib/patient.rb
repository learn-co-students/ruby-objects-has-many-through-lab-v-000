class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments.dup.freeze
  end

  def add_appointment(app)
    raise TypeError unless app.is_a? Appointment
    @appointments << app
    app.patient = self unless app.patient == self
  end

  def doctors
    self.appointments.map {|app| app.doctor}
  end

end
