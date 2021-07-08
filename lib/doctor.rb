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
  
  def new_appointment(patient, date)
    appOb = Appointment.new(patient, date, self)
  end 
  
  def appointments 
    Appointment.all.select do |apps|
      apps.doctor == self 
    end 
  end 
  
  def patients 
    appointments.map do |apps|
      apps.patient 
    end 
  end 
end 