class Doctor
  attr_accessor :name 
  
  @@all = []
 
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, date)
  end 
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end 
  
  def patients 
    appointments.map {|appt| appt.patient}
  end 
  
end