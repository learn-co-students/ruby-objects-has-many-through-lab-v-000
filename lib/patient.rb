class Patient
  
  attr_accessor :name, :doctor, :patient, :date, :all
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  
  def new_appointment(doctor,date)
    new_appointment = Appointment.new(self,doctor,date)
    @appointments << new_appointment
    new_appointment
  end
  
  def appointments
    @appointments
  end
  
  def doctors
    appointments.collect { |appointment| appointment.doctor }
  end
  
end