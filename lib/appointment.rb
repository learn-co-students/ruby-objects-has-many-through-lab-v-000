

class Appointment
  attr_accessor :doctor, :date, :patient

  def initialize(date, doc_instance)
    @date = date
    @doctor = doc_instance
    doc_instance.appointments << self
  end
end