class Doctor


attr_accessor :name

@@all =[]

def initialize(name)
  @name = name
  @appointments = []
  @@all << self
end

def self.all
  @@all
end

def new_appointment(patient, date)
  appointment = Appointment.new(patient, self, date)
  @appointments << appointment
  appointment
end

def appointments
  @appointments
end

def add_appointment(appointment)
  @appointments << appointment
end

def patients
  self.appointments.collect do |appointment|
    appointment.patient
  end
end



end
