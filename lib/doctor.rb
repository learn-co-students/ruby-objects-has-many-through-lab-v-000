class Doctor
attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(app)
    @appointments << app
    app.doctor = self
  end

  def patients
    self.appointments.collect {|p| p.patient}
  end

end
