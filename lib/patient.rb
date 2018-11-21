class Patient
  attr_accessor :name, :appointments, :doctors

  @@all = []

  def initialize(name)
    self.name = name
    self.appointments = []
    self.doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(date, self, doctor)
    self.appointments << new_appointment
    self.doctors << doctor
    new_appointment
  end
end
