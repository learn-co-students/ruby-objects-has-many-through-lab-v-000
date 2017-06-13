class Appointment

  attr_accessor :date, :patient, :doctor

  def initialize(date,doc)
    @date = date
    @doctor = doc
    doc.add_appointment(self)
  end

end
