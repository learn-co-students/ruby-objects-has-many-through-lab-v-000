class Appointment
  attr_accessor :doctor, :patient
  attr_reader :name

  def initialize(date, doctor)
    @name = name
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
