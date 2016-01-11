class Patient
  attr_accessor :name, :doctors, :appointments

  def initialize(name)
    @name = name
    @appointments = [] 
    @doctors = []
  end

  def add_appointment(appoint)
    @appointments << appoint
    appoint.patient = self
    @doctors << appoint.doctor
    appoint.doctor.patients << self
  end
end