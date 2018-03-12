class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date, doc)
    @date = date
    @doctor = doc
    doc.appointments << self

  end




end
