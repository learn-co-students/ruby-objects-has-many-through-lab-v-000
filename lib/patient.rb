class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.add_patient(self)
  end

  def doctors
    @appointments.collect { |appt| appt.doctor }
  end

end
