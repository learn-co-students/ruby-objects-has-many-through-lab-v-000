class Appointment
  attr_reader :name, :date
  attr_accessor :doctor, :patient
  def initialize(date, doctor)
    @date = date
    doctor.add_appointment(self)
  end

end
