class Patient
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    appt = Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end
  
  def doctors
    appointments.collect do |appt|
      appt.doctor
    end
  end
  
end