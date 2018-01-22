class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doc)
    self.date = date
    self.doctor = doc
    doc.add_appointment(self)
  end
end
