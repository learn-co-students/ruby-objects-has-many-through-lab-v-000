class Doctor
  attr_accessor :name
  attr_reader :appointments, :patients
  
@@all = []

def initialize(name)
  @name = name
  @appointments = []
  @@all << self
end 

def self.all
  @@all
end 

def new_appointment(patient, date)
app = Appointment.new(self, patient, date)
@appointments << app 
app
  end
  
def appointments
  Appointment.all.select do |app|
    app.doctor == self
  end 
  end
  
def patients
  appointments.map do |app|
    app.patient
  end
end 
  
end
