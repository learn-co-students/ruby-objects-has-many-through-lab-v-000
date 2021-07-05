class Patient
@@all = []

attr_accessor :name, :appointments

def initialize(name)
  @name = name
  @appointments = []
  @@all << self
end


def self.all
  @@all
end

def new_appointment(doctor, date)
 Appointment.new(date, self, doctor)
end


def appointments
  @appointments
end

def doctors
  self.appointments.map do |appointment|
    appointment.doctor
end
end

end
