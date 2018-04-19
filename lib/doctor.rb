class Doctor

  attr_accessor :name, :appointments

  def initialize(name, appointments = [])
    @name = name
    @appointments = appointments
  end


  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end


  def appointments
    @appointments
  end


  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end


end
