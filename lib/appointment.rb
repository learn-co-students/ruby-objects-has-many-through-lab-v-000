class Appointment

  attr_reader :name
  attr_accessor :patient, :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

end #<-- end class -->