class Patient 

attr_accessor :name, :newappointment, :appointments

@@all = []

def initialize(name)
  @name = name
  @@all << self 
  @appointments = []
  @doctorsarray = []
end

def self.all 
  @@all
end

def new_appointment(doctor, date)
  @new_appointment = Appointment.new(doctor, date, self)
  @appointments << @new_appointment
  @new_appointment
end

def doctors
  @appointments.select do |appointment|
      if !@doctorsarray.include? appointment.doctor
      @doctorsarray << appointment.doctor
    end 
  end
  @doctorsarray
end
 
end