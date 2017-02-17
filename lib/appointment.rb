class Appointment

  attr_reader :date, :doctor
  attr_accessor :patient 
  
  def initialize(date, doctor)
    @doctor =  doctor
    @date = date
    @doctor.appointments << self 
  end 

  

end 