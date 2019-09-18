class Appointment
  attr_accessor :doctor, :name, :patient
  def initialize(name, patient)
    @name = name
    @patient = patient
    @patient.add_appointment(self)
  end
end
