class Appointment
  attr_accessor :name, :patient, :doctor

  def initialize(name, patient)
    @name = name
    @patient = patient
    patient.add_appointment(self)
  end

end
