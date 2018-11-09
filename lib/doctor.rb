class Doctor
  attr_accessor
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end

  def all
    @@all
  end
  
  def new_appointment(patient, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.
  end
  
end 