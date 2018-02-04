class Appointment
  attr_accessor :doctor, :date, :patient
  def initialize(date, doc)
    @date = date
    doc.add_appointment(self)
  end
end
