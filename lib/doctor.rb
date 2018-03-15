class Doctor
  attr_accessor :appointments
  attr_reader :name
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def add_appointment(app)
    @appointments << app
  end
  
  def patients
    self.appointments.map{|app| app.patient}
  end
  
end