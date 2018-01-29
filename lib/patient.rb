class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
  end

  def add_appointment(appt)
    appt.patient = self
    @appointments << appt
  end

  def doctors
    @appointments.collect {|appt| appt.doctor}
  end

end
