class Patient

  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(date)
    @appointments << date
    date.patient = self
  end

  def doctors
    @appointments.collect { |x| x.doctor }
  end

end