class Appointment
  
  attr_accessor :doctor, :patient, :date
  
  def initialize(date, doctor)
    doctor.add_appointment(self)
    @date = date
  end
  
end