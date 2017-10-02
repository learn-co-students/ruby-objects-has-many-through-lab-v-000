class Appointment

  attr_accessor :doctor, :patient
  attr_reader :name
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @doctor.add_appointment(self)

  end

  #def add_appointment()


end
