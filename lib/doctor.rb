class Doctor

  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(date)
    @appointments << date
    date.doctor = self
  end

  def patients
    @appointments.collect { |x| x.patient }
  end

end