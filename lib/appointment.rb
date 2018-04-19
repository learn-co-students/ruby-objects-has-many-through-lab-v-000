class Appointment
  
  attr_accessor :doctor, :date
  
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
  end

end