class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end
  
  def doctors
    self.appointments.collect {|appt| appt.doctor}
  end
  
end