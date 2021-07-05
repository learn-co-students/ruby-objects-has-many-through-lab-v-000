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

def new_appointment(patient, date)
  Appointment.new(patient, self, date)
end

def appointments
  Appointment.all.select do |appointments|
    appointments.doctor == self 
  end
end

def patients
  appointments.map do |patients|
    patients.patient 
  end
end


end