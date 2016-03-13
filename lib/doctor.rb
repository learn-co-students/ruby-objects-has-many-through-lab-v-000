class Doctor
  attr_accessor :name #, :patient, :appointment  #:date, 

  def initialize(name)
    @name = name
    #@patient = patient
    #@date = date
    @appointments = []
    #patient.add_appointment(self)
  end


  def add_appointment(appointment)
   
    # appointment.patient = self
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
     @appointments
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
   # patient.appointment
    # @appointments.collect do |patient|
    #   #appointment.patient
    # patient.appointment
    end
  end

end