class Patient

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(app)
    @appointments << app 
    app.patient = self
  end

  def doctors
    self.appointments.collect do |doc|
      doc.doctor
    end
  end
end