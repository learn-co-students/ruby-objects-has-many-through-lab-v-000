class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end
  
  def doctors
    appointments.collect { |appt| appt.doctor } 
  end
  
  def self.all
    @@all
  end
end

# - The `Patient` class needs an instance method, `#appointments`, that iterates
#   through the appointments array and returns appointments that belong to the
#   patient.
# - The `Patient` class needs an instance method, `#doctors`, that iterates over
#   that patient's appointments and collects the doctor that belongs to each
#   appointment.