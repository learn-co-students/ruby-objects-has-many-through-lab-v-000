class Doctor
  
  attr_accessor :name, :patient, :appointment
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    newAppointment = Appointment.new(date, patient, self)
    newAppointment
  end
  
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end
  
  def patients
    appointmentsList = []
    self.appointments.map { |appointment|
      appointmentsList << appointment.patient
    }
    appointmentsList
  end
  
end