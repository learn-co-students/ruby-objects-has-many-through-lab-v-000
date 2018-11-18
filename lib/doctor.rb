class Doctor
  
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
  
  def new_appointment(patient,date)
    new_appointment = Appointment.new(patient,self,date)
    @appointments << new_appointment
    new_appointment
  end
  
  def appointments
    @appointments
  end

  
  def patients
    appointments.collect { |appointment| appointment.patient }
  end
  
end