class Appointment
  attr_accessor :name, :patient, :doctor

  def initialize(name, date)
    @name = name
    @date = date
    date.add_appointment(self)
  end
end
