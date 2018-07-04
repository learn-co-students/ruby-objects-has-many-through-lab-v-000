class Doctor
  @@all = []
  attr_accessor :name, :patients, :appointments
  def initialize(name)
    @name = name
    @patients = []
    @appointments = []
    @@all << self
  end
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end
  def self.all
    return @@all
  end
end
