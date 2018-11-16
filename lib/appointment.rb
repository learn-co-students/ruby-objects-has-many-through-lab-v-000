class Appointment
attr_accessor :doctor, :date

@@all = []

def initialize(doctor, date)
  @doctor = doctor
  @date = date
  @@all << self
end

def self.all
  @@all
end


end
