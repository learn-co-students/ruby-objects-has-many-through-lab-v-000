class Appointment
  attr_accessor :doctor, :patient, :name

  def initialize(name, doctor)
    @name = name
    self.doctor = doctor
    doctor.add_appointment(self)
  end

end
