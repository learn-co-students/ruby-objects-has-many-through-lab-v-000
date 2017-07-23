class Doctor
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
    app.doctor = self unless app.doctor == self
  end

  def patients
    self.appointments.map {|app| app.patient}
  end

end
