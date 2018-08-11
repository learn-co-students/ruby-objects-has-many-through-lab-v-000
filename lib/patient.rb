class Patient
  attr_accessor :name
  attr_reader :doctor, :patients, :appointments
  
@@all = []

def initialize(name)
  @name = name
  @@all << self
end 

def self.all
  @@all
end 

def new_appointment(doctor, date)
  app = Appointment.new(doctor, self, date)
  doctor.appointments << app
  app
end

def appointments
  Appointment.all.select do |apps|
    apps.patient == self
  end 
end

def doctors
  appointments.map do |app|
    app.doctor
  end 
end 

end 
