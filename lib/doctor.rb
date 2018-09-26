class Doctor
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self }
  end
  
  def patients 
    appointments.map {|doctor| doctor.patient}
  end
end