class Appointment

attr_accessor :doctor, :patient
attr_reader 

  def initialize(appointment, doctor)
    doctor.add_appointment(self)
  end
end