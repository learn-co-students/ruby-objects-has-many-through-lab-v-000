class Doctor

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
    @patient = patient
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

   def patients
     @appointments.collect do |appointment|
       appointment.patient
     end
   end


end
