class Patient
  attr_accessor :appointments
  attr_reader :name
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def add_appointment(app)
    @appointments << app
    app.patient = self
  end
  
  def doctors
    self.appointments.map{|app| app.doctor}
  end
  
end