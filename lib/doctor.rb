class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.add_doctor(self)
  end

  def patients
    self.appointments.collect { |appt| appt.patient }
  end

end
