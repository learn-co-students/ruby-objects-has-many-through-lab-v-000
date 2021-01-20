class Doctor 
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, name)
    appointment = Appointment.new(name, self, date)
    appointment
  end
  
  def appointments 
    Appointment.all.select { |appointment| appointment.doctor == self }
  end 
  
  def patients
    appointments.map { |appointment| appointment.patient }
  end
end 