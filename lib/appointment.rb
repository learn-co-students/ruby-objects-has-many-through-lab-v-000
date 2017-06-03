class Appointment
  attr_accessor :patient, :doctor, :date
  def initialize(date, patient)
    @date = date
    @patient = patient
    patient.add_appointment(self)
  end

end
