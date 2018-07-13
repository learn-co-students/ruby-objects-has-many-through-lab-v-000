class Doctor


attr_accessor :name

@@all =[]

def initialize(name)
  @name = name
  @appointments = appointments
  @@all << self
end

def new_appointment(date, patient)
Appointment.new(patient, self, date)
end




def self.all
  @@all
end



end
