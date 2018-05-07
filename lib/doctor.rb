class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    appt.doctor = self if !appt.doctor.is_a?(Doctor)
    @appointments << appt
  end

  def patients
    self.appointments.collect {|appt| appt.patient }
  end
end
