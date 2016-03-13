class Patient
  attr_accessor :name #, :doctor, :appointment #:date, 

  def initialize(name)
    @name = name
#     @doctor = doctor
#     @date = date
    @appointments = []

  end

  def add_appointment(appointment)
     @appointments <<  appointment
     appointment.patient = self
     #appointment.doctor = self
  end

  def appointments
      @appointments
  end

  def doctors
    @appointments.collect do |appointment|
      #appointment.patient
      #patient.appointment
      appointment.doctor
    end
  end
end