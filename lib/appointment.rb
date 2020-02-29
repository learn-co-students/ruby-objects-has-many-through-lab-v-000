class Appointment

  attr_accessor :date, :name, :patient, :doctor

  def initialize(date, doctor)
    @date = date
    @name = name
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
