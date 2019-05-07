class Patient
  attr_accessor :name

  @@all = []

  def intialize (name)
    @name = name
    @@all << self
end

def self.all
  @@all
end

def new_appointment(doctor, date)
  Appointment.new(self, doctor , date)
end

def appointments
  Appointment.all.select do |appointment|
    appointment.patient
  end
end

def doctors
  appointmets.map do |appointment|
    appointment.doctor
end
end
end
