class Doctor
#==========================================
  # INSTANCE ATTRIBUTES
#==========================================
attr_accessor :name, :appointments
#==========================================  
  # INSTANCE
#==========================================
  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appt)
    self.appointments << appt
    appt.doctor = self
  end

  def patients
    self.appointments.map{|appt|appt.patient}
  end
#========================================== 
end