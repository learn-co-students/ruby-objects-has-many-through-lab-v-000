class Appointment
  attr_accessor :doctor, :patient, :date
  def initialize(date,doc)
    @date=date
    @doctor=doc
    @doctor.add_appointment(self)
  end
end
