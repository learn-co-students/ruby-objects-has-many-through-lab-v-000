class Appointment
  attr_accessor :date, :doctor
  attr_reader :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

  def patient=(patient)
    @patient = patient
  end
end
