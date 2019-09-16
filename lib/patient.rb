class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(app)
    @appointments << app
    app.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |doc|
      doc.doctor
  end
end
end
