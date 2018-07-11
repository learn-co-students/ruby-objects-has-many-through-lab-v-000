require "pry"
class Patient
  attr_accessor :name, :appointments
  @@all =[]

  def initialize(name)
    @name = name
    @appointments = []
   @@all << self
  end

  def self.all
    @@all
  end

def new_appointment(doctor, date)
  new_appointment = Appointment.new(self, doctor, date)
  @appointments << new_appointment
  new_appointment
end
   def doctors
      # binding.pry
     self.appointments.collect do |appointment|
       appointment.doctor

     end
   end
end
