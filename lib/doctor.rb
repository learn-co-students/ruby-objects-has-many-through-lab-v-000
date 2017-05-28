#build clas Doctor and initialize with name and empty array for appointments

class Doctor

  attr_accessor :name, :appointments, :patients, :patient, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  #adds new appointment to doctors appointment
  def add_appointment(appointment)
    appointment.doctor = self
     @appointments << appointment
  end

  #has many appointments
  def appointments
    @appointments
  end

  #collects patients that belongs to each appointment
  def patients
    self.appointments.collect do |appointment|
     appointment.patient
    end
  end
end
