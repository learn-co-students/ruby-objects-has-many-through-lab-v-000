class Appointment

attr_accessor :patient, :doctor

  def initialize(date, doctor)
    @date = date
    doctor.add_appointment(self)
    self.doctor = doctor
  end









end
