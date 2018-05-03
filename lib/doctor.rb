class Doctor
  attr_accessor :patients
  attr_reader :name, :appointments
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def add_appointment(app)
    @appointments << app
    app.doctor = self
  end
  
  def appointments
    @appointments
  end
  
  def patients
    @appointments.collect {|app| app.patient}
  end
  
end