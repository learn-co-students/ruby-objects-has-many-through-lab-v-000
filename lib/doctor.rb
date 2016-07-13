require "pry"
class Doctor

  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

# doctor has many appointments
  def add_appointment(appointment)
    @appointments << appointment
    # binding.pry
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
