class Doctor

attr_accessor :name, :appointments, :patient

@@all = []

 def initialize(name)
   @name = name
   @appointments = []
   self.save
 end

 def self.all
   @@all
 end

 def save
   @@all << self
 end



 def new_appointment(patient, date)
    new_object = Appointment.new(patient, self, date)
    @appointments << new_object
    new_object
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
