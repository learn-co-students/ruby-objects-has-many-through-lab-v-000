class Patient
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def new_appointment(doctor, date)
    date = Appointment.new(date, self, doctor)
    @appointments << date
    @doctors << doctor
  end

  def appointments
    @appointments
  end

  def doctors
    @doctors
  end

end
