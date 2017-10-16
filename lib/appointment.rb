class Appointment
  attr_accessor :doctor, :patient, :date

  def initialize(date,doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

  # def patient  LOOP
  #   patient.appointment = self
  # end

end
