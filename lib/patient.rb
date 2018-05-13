class Patient
  attr_accessor :doctor, :date, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def self.all
    @@all
  end
end
