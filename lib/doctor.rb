class Doctor
  @@all = []
  
  attr_accessor :name, :appointments, :patient, :date
  
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    @appointments << appointment
    appointment
  end
    
end