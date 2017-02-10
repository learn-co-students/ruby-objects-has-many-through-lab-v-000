
class Doctor
  attr_accessor :name
  attr_reader :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.doctor = self
    @patients << appt.patient
  end

end
