class Doctor

attr_accessor :name
  @@all_doctors = []

def initialize(name)
  @name = name
  @@all_doctors << self
end

def self.all
  @@all
end

def new_appointment(date,patient)
  Appointment.new
end

def appointments
  appointments.select do |appointment|
    doctor.appointment
  end
end

def patients
  patients.collects do |patient|
    patient.appointment
  end
end

end
