class Appointment
  attr_accessor :appointments, :patient, :doctor
  attr_reader :date

  def initialize(date, doctor)
    @date = date
    @doctor= doctor
    doctor.add_appointment(self)
  end
end
