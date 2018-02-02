class Patient
  attr_accessor :name, :appointments, :doctors
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def add_appointment(appt)
    @appointments << appt
    #appt.appointment = self
    appt.patient = self
  end
  
  def doctors
    @appointments.collect{|i|
      i.doctor
    }
  end 
  
end