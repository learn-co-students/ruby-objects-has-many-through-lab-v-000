class Patient
  attr_accessor :name, :appointments, :doctors
  @@all = []
  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
    @@all << self
  end
  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end
  def self.doctors
    return @doctors
  end
end
