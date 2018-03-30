class Appointment

attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    self.patient = patient
    doctor.add_appointment(self)
  end

end
