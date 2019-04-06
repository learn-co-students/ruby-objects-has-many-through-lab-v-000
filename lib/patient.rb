class Patient

@@all = []
attr_accessor :name

def self.all
  @@all
end

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(doctor, date)
  Appointment.new(self, doctor, date)
end

def appointments
  Appointment.all.select { |appointment| appointment.patient == self}
end

def doctors
  Appointment.all.map do |appointment|
  appointment.doctor
  end
end

# With the map method
# def doctors
#   appointments.map(&:doctor)
# end

end
