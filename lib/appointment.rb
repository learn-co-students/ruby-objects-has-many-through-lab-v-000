class Appointment
  attr_accessor :date, :patient, :doctor

  def initialize(date, patient)
    @date = date
    patient.add_appointment(self)
  end
end
