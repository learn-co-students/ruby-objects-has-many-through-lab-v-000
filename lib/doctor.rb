class Doctor

attr_accessor :name, :appointments

@@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

   def new_appointment(patient, date)
     new_appointment = Appointment.new(patient, self, date)
     @appointments << new_appointment
     new_appointment
   end
  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
