class Patient
  
  attr_accessor
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    newAppointment = Appointment.new(date, self, doctor)
    newAppointment
  end
  
  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end
  
  def doctors
    appointmentsList = []
    self.appointments.map { |appointment|
      appointmentsList << appointment.doctor
    }
    appointmentsList
  end
    
end