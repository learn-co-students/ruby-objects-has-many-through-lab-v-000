class Doctor


attr_accessor :name, :appointments
  def initialize(name)
    @name = name 
    @appointments = []
  end 

  def add_appointment(string)
    self.appointments << string
    string.doctor = self 
  end 

  def patients
    @appointments.collect {|patient| patient.patient}
  end 

end 