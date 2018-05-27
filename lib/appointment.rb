class Appointment
  attr_accessor :patient
  attr_reader :date, :doctor
  
  @@all = []
  

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    self << all
  end

end