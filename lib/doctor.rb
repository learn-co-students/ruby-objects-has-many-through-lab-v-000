class Doctor

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(new_appointment)
    @appointments << new_appointment
    new_appointment.doctor = self

def appointments
  @appointments
end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
end 
