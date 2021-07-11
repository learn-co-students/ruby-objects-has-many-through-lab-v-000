class Patient
  attr_accessor :name
  attr_reader :appointments
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def add_appointment(app)
    @appointments << app
    app.patient = self
  end
  
  def doctors
    d = @appointments.collect { |e| e.doctor }
    d
  end
end