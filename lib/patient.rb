class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []

  end

  def add_appointment(apppointment)
    @appointments << apppointment
    apppointment.patient = self
  end

  def doctors
   @appointments.collect do |appointment|
      appointment.doctor
    end
  end

  

end#class