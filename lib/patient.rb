class Patient
  attr_accessor :appointments, :name
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.patient = self
  end

  def doctors
    @appointments.collect {|appt| appt.doctor}
  end


end
