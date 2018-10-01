class Doctor
  
  @@all = []
  attr_accessor :name, :patients, :appointments
  def initialize(name)
    @name = name
    @patients = []
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    new_appointment = Appointment.new(patient, self, date)
  end
end