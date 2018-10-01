class Patient
  
  @@all = []
  attr_accessor :name, :doctors, :appointments
  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    new_patient = Appointment.new(self, doctor, date)
  end
end