class Patient

   attr_reader :name
   
@@all = []

   def initialize(name)
     @name = name
     @@all << self 
   end
   
   def self.all
     @@all
   end 

    def new_appointment(doctor, date)
     Appointment.new(self, doctor, date)
   end

def appointments
     Appointment.all.select do |appointment|
       appointment.patient == self
     end
   end
   
def doctors
     appointments.map do |appointments|
       appointments.doctor
     end
   end
  end