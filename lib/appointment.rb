class Appointment
  attr_accessor :doctor, :patient

  def initialize(date,doctor_name)
    @doctor = doctor_name
    @patient = patient
    @appointment = date
    doctor.add_appointment(self)
  end

end
