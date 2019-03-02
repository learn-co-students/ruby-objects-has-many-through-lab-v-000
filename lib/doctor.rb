class Doctor
  #attr_accessor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient)
  end

  def appointments
  end

end #<---- CLASS end
