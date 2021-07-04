class Patient
  attr_accessor :doctor, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
  end
end

def new_appointment(doctor,date)
  Appointment.new(date,self,doctor)
end

def doctors
  self.appointments.collect do |appointment|
    appointment.doctor
  end
end

  
end