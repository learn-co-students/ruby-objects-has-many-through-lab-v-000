class Patient


@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def appointments
  Appointment.all.select do |appointment|
    appointment.patient == self
  end
end

def new_appointment(doctor, date)
  Appointment.new(doctor, self, date)
end

end
