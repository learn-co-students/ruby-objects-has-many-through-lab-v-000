class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, appointment_date)
    Appointment.new(appointment_date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    appointments.map {|appointment| appointment.doctor}
  end
  
end



